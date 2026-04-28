{ self, inputs, ... }: let

in {
  flake.nixosModules.user = { pkgs, lib, config, ... }: let
    inherit (lib) mkOption types;
  in {
    options.users = mkOption {  
      type = types.listOf (types.submodule {
        username = mkOption {
          type = types.str;
          example = "eric";
        };
        firstname = mkOption {
          type = types.str;
          example = "Eric";
        };
        uslastname = mkOption {
          type = types.str;
          example = "Example";
        };
        email = mkOption {
          type = types.str;
          example = "eric@example.com";
        };

        groups = mkOption {
          type = types.listOf types.str;
          example = [ "wheel" "networkmanager" ];
        };
      });
    };
  };
}