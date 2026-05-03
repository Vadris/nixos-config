{ self, inputs, ...}: let

in {
  flake.nixosModules.xdg-desktop-kde = { pkgs, lib, config, ...}: let
  
  in {
    imports = [
      self.nixosModules.xdg-desktop-portal
    ];

    xdg.portal.extraPortals = [
      pkgs.xdg-desktop-portal-kde
    ];
  };
}