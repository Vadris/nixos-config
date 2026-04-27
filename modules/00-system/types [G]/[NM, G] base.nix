{ self, inputs, ... }: let

in {
  flake.nixosModules.system-base = { pkgs, lib, ... }: let
    
  in {
    imports = [
      # /etc/nixos/hardware-configuration.nix # Needs to be commented on non nixos systems, when checking the flake
      self.nixosModules.grub-efi
      self.nixosModules.kernel-linux-latest
      self.nixosModules.firewall
      self.nixosModules.networkManager
      self.nixosModules.ssh-agent
      self.nixosModules.ntp
      self.nixosModules.zsh
      self.nixosModules.sudo
    ];

    nix.registry.system.flake = self;
    
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
    nixpkgs.hostPlatform = "x86_64-linux";
  };  
}