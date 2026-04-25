{ self, inputs, ... }:
{
  flake.nixosModules.systemTypes.base = { pkgs, lib, ... }: {
    imports = [
      self.nixosModules.boot.grub-efi
      self.nixosModules.networking.firewall
      self.nixosModules.networking.networkManager
    ];
    
    nix.settings.experimental-features = [ "nix-command" "flakes" ];

    options = {};
  
    config = {};
  };  
}