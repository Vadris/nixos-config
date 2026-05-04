{ self, inputs, ...}: let

in {
  flake.nixosModules.xdg-desktop-portal = { pkgs, lib, config, ...}: let
    
  in {
    xdg.portal.enable = true;
  };
}