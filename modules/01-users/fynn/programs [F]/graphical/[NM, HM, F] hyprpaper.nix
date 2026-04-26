{ self, inputs, ... }: let 

in {
  flake.nixosModules.programs.hyprpaper = { pkgs, ...}: {
    enviroment.systemPackages = [
      pkgs.hyprpaper
    ];
  };
}