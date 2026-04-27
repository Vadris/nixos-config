{ self, inputs, ... }: let
  
in{
  flake.nixosModules.grub-efi = { pkgs, lib, ... }: let 
    
  in {
    boot.loader.grub = {
      enable = true;
      efiSupport = true;
      device = "nodev"; # "nodev" for EFI
    };

    boot.loader.efi.canTouchEfiVariables = true;
    
    # TODO: Set this though an option
    boot.supportedFilesystems = [
      "exfat"
      "btrfs"
    ];
  };
}