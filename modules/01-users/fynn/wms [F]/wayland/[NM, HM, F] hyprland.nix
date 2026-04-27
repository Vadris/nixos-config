{ self, inputs, ... }: {
  flake.nixosModules.hyprland-uswm = { pkgs, lib, config, }: {
    programs.hyprland = {
      enable = true;
      xwayland.enable = true;
      withUWSM = true;
    };
  };
  
  flake.homeModules.fynn-hyprland = { pkgs, lib, config, ...}: {
    wayland.windowManager.hyprland.enable = true;
  };
}