{ self, inputs, ... }: let

in {
  flake.homeModules.themeOption = { pkgs, lib, config, ... }: let
    inherit (lib) types mkOption;
    # Color Option
    mkRGBAOption = mkOption {
      type = types.str // {
        check = (x: true);
      };
      example = "#rrggbbaa";
    };
    mkRGBOption = mkOption {
      type = types.str // {
        check = (x: true);
      };
      example = "#rrggbb";
    };
  in {
    options.themes = mkOption {
      type = types.listOf (types.submodule {
        colors = mkOption {
          type = types.submodule {
            background = mkRGBAOption;

            primary = mkRGBAOption;
            primaryLight = mkRGBAOption;
            primaryDark = mkRGBAOption;
            
            secondary = mkRGBAOption;
            secondaryLight = mkRGBAOption;
            secondaryDark = mkRGBAOption;

            inactive = mkRGBAOption;
            
            shadow = mkRGBAOption;

            button = mkRGBAOption;

            hover = mkRGBAOption;
            click = mkRGBAOption;

            text = mkRGBAOption;
            textActive = mkRGBAOption;
            textInactive = mkRGBAOption;
            textWarn = mkRGBAOption;
            textSuccess = mkRGBAOption;
            link = mkRGBAOption;
            linkVisited = mkRGBAOption;

            terminal = mkOption {
              type = types.submodule {
                white = mkRGBOption;
                lightGray = mkRGBOption;
                gray = mkRGBOption;
                black = mkRGBOption;
                red = mkRGBOption;
                brightRed = mkRGBOption;
                green = mkRGBOption;
                brightGreen = mkRGBOption;
                yellow = mkRGBOption;
                brightYellow = mkRGBOption;
                blue = mkRGBOption;
                brightBlue = mkRGBOption;
                magenta = mkRGBOption;
                brightMagenta = mkRGBOption;
                cyan = mkRGBOption;
                brightCyan = mkRGBOption;
              };
            };
          };
        };

        decorations = mkOption {
          type = types.submodule {
            smallRadius = mkOption {
              type = types.int;
              example = 5;
            };

            largeRadius = mkOption {
              type = types.int;
              example = 5;
            };
          };

        };

        fonts = mkOption {
          type = types.submodule {
            # General Font
            general = mkOption {
              type = types.submodule {
                name = mkOption { type = types.str; };
                size = mkOption { type = types.int; };
              };
            };
            # Monospace font
            monospace = mkOption {
              type = types.submodule {
                name = mkOption { type = types.str; };
                size = mkOption { type = types.int; };
              };
            };
          };
        };

        icon-theme = mkOption {
          type = types.str;
          example = "candy-icons";
        };

        wallpapers = mkOption { 
          type = types.listOf types.path; 
        }; 

      });

      default = [

      ];
    };
  };
}