{ self, inputs, ... }: let 

in  {
  flake.nixosModules.hyprland-uswm = { pkgs, lib, config, }: let
    
  in {
    programs.hyprland = {
      enable = true;
      xwayland.enable = true;
      withUWSM = true;
    };
  };
  
  flake.homeModules.fynn-hyprland = { pkgs, lib, config, ...}: let
    
  in {
    wayland.windowManager.hyprland.enable = true;
  };
}