{ self, inputs, ... }: let 

in {
  flake.nixosModules.hyprpaper = { pkgs, ...}: let 

  in {
    enviroment.systemPackages = [
      pkgs.hyprpaper
    ];
  };
}