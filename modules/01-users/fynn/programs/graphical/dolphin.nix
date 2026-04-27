{ self, inputs, ...}: let 

in {
  perSystem = { pkgs, ... }: let
    
    in {
    homeModules.fynn.dolphin = {
      home.packages = [
        pkgs.dolphin
      ];
    };
    
    flake.homeModules.fynn.dolphin = { pkgs, lib, config, ...}: {
      
    };
  };
}