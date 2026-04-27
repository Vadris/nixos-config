{ self, inputs, ... }:
{
  flake.nixosModules.system-base = { pkgs, lib, ... }: {
    imports = [
      # /etc/nixos/hardware-configuration.nix
      self.nixosModules.grub-efi
      self.nixosModules.kernel-linux-latest
      self.nixosModules.firewall
      self.nixosModules.networkManager
      self.nixosModules.ssh-agent
      self.nixosModules.ntp
      self.nixosModules.zsh
      self.nixosModules.sudo
    ];
    
    nix.settings.experimental-features = [ "nix-command" "flakes" ];

    nix = {
      # package = pkgs.nixUnstable;
      trustedBinaryCaches = [
        "http://cache.nixos.org"
      ];

      binaryCaches = [
        "http://cache.nixos.org"
      ];

      gc.automatic = false;
      maxJobs = lib.mkForce 6;

    };

    # Temporary workaround to get the flake to pass checking without a hrdware config
    # nixpkgs.hostPlatform = "x86_64-linux";
  };  
}