{ self, inputs, ... }: {
  flake.homeModules.windowManagers.hyprland = { pkgs, lib, config, ...}: {
    wayland.windowManager.hyprland.enable = true;
  };
}