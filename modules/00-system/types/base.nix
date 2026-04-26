{ self, inputs, ... }:
{
  flake.nixosModules.systemTypes.base = { pkgs, lib, ... }: {
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

    options = {};
  
    config = {};
  };  
}