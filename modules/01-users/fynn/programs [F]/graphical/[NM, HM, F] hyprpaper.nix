{ self, inputs, ... }: let 

in {
  flake.nixosModules.hyprpaper = { pkgs, ...}: {
    enviroment.systemPackages = [
      pkgs.hyprpaper
    ];
  };
}