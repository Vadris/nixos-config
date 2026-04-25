{ self, inputs, ... }: {
  flake.homeModules.windowManagers.hyprland.theme = { pkgs, lib, config, ...}: {
    wayland.windowManager.hyprland.settings = {

    };
  };
}