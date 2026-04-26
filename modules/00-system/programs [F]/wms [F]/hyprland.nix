{ self, inputs, ... }: let
  
in {
  flake.nixosModules.wms.hyprland = { pkgs, lib, config, }: {
    programs.hyprland = {
      enable = true;
      xwayland.enable = true;
      withUWSM = true;
    };
  };
}