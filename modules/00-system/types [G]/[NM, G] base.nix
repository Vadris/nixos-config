{ self, inputs, ... }:
{
  flake.nixosModules.system-base = { pkgs, lib, ... }: {
    imports = [
      /etc/nixos/hardware-configuration.nix
      self.nixosModules.boot.grub-efi
      self.nixosModules.networking.firewall
      self.nixosModules.networking.networkManager
      self.nixosModules.networking.ssh-agent
      self.nixosModules.networking.ntp
      self.nixosModules.programs.zsh
      self.nixosModules.programs.sudo
    ];
    
    nix.settings.experimental-features = [ "nix-command" "flakes" ];

    nix = {
      package = pkgs.nixUnstable;
      trustedBinaryCaches = [
        "http://cache.nixos.org"
      ];

      binaryCaches = [
        "http://cache.nixos.org"
      ];

      gc.automatic = false;
      maxJobs = pkgs.stdenv.lib.mkForce 6;
    };

    options = {};
  
    config = {};
  };  
}