{ self, inputs, ... }: let 

in {
  flake.homeModules.keymapOptions = { pkgs, lib, config, ... }: let
    inherit (lib) mkOption types;
  in {
    options.keymaps = mkOption {
      type = types.listOf (types.submodule {
        
      });
      default = [ 
         
      ];
    };
  };
}