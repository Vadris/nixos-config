{ self, inputs, ... }: let 

in  {
  flake.nixosModules.hyprland = { pkgs, lib, config, }: let
    
  in {
    programs.hyprland = {
      enable = true;
      xwayland.enable = true;
    };
  };

  flake.nixosModules.hyprland-uwsm = { pkgs, lib, config, }: let
    
  in {
    imports = [
      self.nixosModules.hyprland
    ];
    programs.hyprland.withUWSM = true;
  };
  
  
  flake.homeModules.fynn-hyprland = { pkgs, lib, config, ...}: let
    
  in {
    wayland.windowManager.hyprland.enable = true;
  };
}