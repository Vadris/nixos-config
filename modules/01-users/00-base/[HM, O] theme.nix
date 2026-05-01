{ self, inputs, ... }: let

in {
  flake.homeModules.theme = { pkgs, lib, config, ... }: let
    inherit (lib) types mkOption;
    # Color Option
    mkRGBAOption = mkOption {
      type = types.submodule {
        r = mkOption {
          type = types.int // {
            check = (x: 0 <= x && x <= 255);
          };
        };
        g = mkOption {
          type = types.int // {
            check = (x: 0 <= x && x <= 255);
          };
        };
        b = mkOption {
          type = types.int // {
            check = (x: 0 <= x && x <= 255);
          };
        };
        a = mkOption {
          type = types.int // {
            check = (x: 0 <= x && x <= 255);
          };
        };
      };
      example = "#rrggbbaa";
    };
    mkRGBOption = mkOption {
      type = types.submodule {
        r = mkOption {
          type = types.int // {
            check = (x: 0 <= x && x <= 255);
          };
        };
        g = mkOption {
          type = types.int // {
            check = (x: 0 <= x && x <= 255);
          };
        };
        b = mkOption {
          type = types.int // {
            check = (x: 0 <= x && x <= 255);
          };
        };
      };
      example = "#rrggbbaa";
    };
  in {
    options.theme = mkOption {
      type = types.submodule {
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

        # Qt sepcific
        kvantum-theme = mkOption {
          type = types.str;
        };

        # GTK specific
        gtk-theme = mkOption {
          type = types.str;
        };

        # TODO: Give Resolutions instead of monitor names here, and select monitor names based on monitor config.
        wallpapers = mkOption { 
          type = types.listOf (types.submodule {
            monitor = mkOption {
              type = types.str;
            };
            fit_mode = mkOption {
              type = types.str;
            };
            path = mkOption {
              type = types.path;
            };
          }); 
        }; 

      };

      default = [

      ];
    };
  };
}