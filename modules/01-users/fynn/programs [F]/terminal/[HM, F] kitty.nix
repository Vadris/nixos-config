{ self, inputs, ... }: let 

in {
  flake.homeModules.fynn-kitty = { pkgs, lib, config, ... }: let 
    
  in {
    programs.kitty = {
      enable = true;
      
    };
  };
}