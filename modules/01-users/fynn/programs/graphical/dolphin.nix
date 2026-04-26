{ self, inputs, ...}: let 

in {
  flake.homeModules.fynn.dolphin = { pkgs, ... }: let
    
    in {
    homeModules.fynn.dolphin = {
      home.packages = [
        pkgs.dolphin
      ];
    };
    
    #  = { pkgs, lib, config, ...}: {
    #   
    # };
  };
}