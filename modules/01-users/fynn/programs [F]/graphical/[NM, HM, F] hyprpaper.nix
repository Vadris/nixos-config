{ self, inputs, ... }: let 

in {
  flake.nixosModules.hyprpaper = { pkgs, ...}: let 

  in {
    enviroment.systemPackages = [
      pkgs.hyprpaper
    ];
  };

  flake.homeModules.fynn-hyprpaper = { pkgs, lib, config, ... }: {
    imports = [
      self.homeModules.theme
    ];

    services.hyprpaper = {
      enable = true;
      settings = {
        splash = false;
        # TODO: Map wallpapers from theme config
        wallpapers = [

        ];
      };
    };
  };
}