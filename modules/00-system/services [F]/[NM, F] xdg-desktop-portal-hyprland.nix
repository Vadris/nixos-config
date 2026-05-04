{ self, inputs, ...}: let

in {
  flake.nixosModules.xdg-desktop-portal-hyprland = { pkgs, lib, config, ...}: let 
    
  in {
    imports = [
      self.nixosModules.xdg-desktop-portal
    ];
    
    xdg.portal.extraPortals = [
      pkgs.xdg-desktop-portal-hyprland
    ];
  };
}