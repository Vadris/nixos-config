{lib, ...}:

let 

  # attrConcatMap = {};
  userConfig = import ./modules/user-config.nix;
  accounts = userConfig.accounts;

  # Create subvolume for every user configured
  # TODO: Also create subvolumes for .cache, .local, .var, Applications, Downloads and snapshots
  userSubvolumes = lib.mapAttrs' (username: _:
    lib.nameValuePair "@home/${username}" {
      mountOptions = [ "compress=zstd" ];
    }
  ) accounts;


in
{
  disko.devices = {
    disk = {
      main = {
        type = "disk";
        device = "/dev/<diskname>";
        content = {
          type = "gpt";
          partitions = {
            
            # EFI Partition
            ESP = {
              priority = 1;
              name = "ESP";
              size = "512M";
              type = "EF00";
              content = {
                type = "filesystem";
                format = "vfat";
                mountpoint = "/boot";
                mountOptions = [ "umask=0077" ];
              };
            };


            # Swap Partition
            swap = {
              size = "16G";

              content = {
                type = "swap";
                discardPolicy = "both";
                randomEncryption = true;
                # resumeDevice = true; # resume from hiberation from this device
              };
            };
            
            
            # Root Partition
            root = {
              size = "100%";
              content = {
                type = "btrfs";
                extraArgs = [ "-f" ]; # Override existing partition

                # Inspired by: https://www.jwillikers.com/btrfs-layout
                # Subvolumes must set a mountpoint in order to be mounted,
                # unless their parent is mounted
                subvolumes = {
                  # System Root
                  "@" = {
                    mountOptions = [ "compress=zstd" ];
                    mountpoint = "/";
                  };
                  
                  # Snapshots
                  "@snapshots" = {
                    mountOptions = [ "compress=zstd" ];
                    mountpoint = "/.snapshots";                    
                  };

                  # Nix
                  "@nix" = {
                    mountOptions = [ "compress=zstd" ];
                    mountpoint = "/nix";
                  };

                  # etc

                  "@etc" = {
                    mountOptions = [ "compress=zstd" ];
                    mountpoint = "/etc";
                  };

                  # Temp Files
                  "@tmp" = {
                    mountOptions = [ "compress=zstd" ];
                    mountPoint = "/tmp";
                  };

                  # Var
                  "@var" = {
                    mountOptions = [ "compress=zstd" ];
                    mountpoint = "/var";
                  };

                  # Log files
                  "@log" = {
                    mountOptions = [ "compress=zstd" ];
                    mountpoint = "/var";                    
                  };

                  # Podman containers
                  "@containers" = {
                    mountOptions = [ "compress=zstd" ];
                    mountpoint = "/var/lib/containers";
                  };

                  # libvirt machines
                  "@libvirt-machines" = {
                    mountOptions = [ "compress=zstd" ];
                    mountpoint = "/var/lib/libvirt/images";
                  };
                  
                  # Homes
                  # Root user home
                  "@root" = {
                    mountOptions = [ "compress=zstd" ];
                    mountpoint = "/root"; 
                  };
                  
                  # User homes
                  "@home" = {
                    mountOptions = [ "compress=zstd" ];
                    mountpoint = "/home";
                  };
                
                  
                } // userSubvolumes;

                mountpoint = "/";
              };
            };
          };
        };
      };
    }
  }
}