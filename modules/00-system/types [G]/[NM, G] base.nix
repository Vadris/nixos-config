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

    nix.settings = {
      # package = pkgs.nixUnstable;
      substituters = [
        "http://cache.nixos.org"
      ];

      trusted-binaryCaches = [
        "http://cache.nixos.org"
      ];

      maxJobs = lib.mkForce 6;

    };

    nix.gc.automatic = false;

    # Temporary workaround to get the flake to pass checking without a hrdware config
    # nixpkgs.hostPlatform = "x86_64-linux";

    system.stateVersion = "26.05";
  };  
}