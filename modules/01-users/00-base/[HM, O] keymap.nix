{ self, inputs, ... }: let 

in {
  flake.homeModules.keymap = { pkgs, lib, config, ... }: let
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