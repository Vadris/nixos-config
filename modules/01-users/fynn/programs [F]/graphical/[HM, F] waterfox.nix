{ self, inputs, ...}: let 

in {
  flake.homeModules.fynn.dolphin = { pkgs, ... }: let
    
    in {
    homeModules.fynn.dolphin = {
      home.packages = [
        inputs.waterfox.packages.${pkgs.system}.waterfox-bin
      ];
    };
    
    #  = { pkgs, lib, config, ...}: {
    #   
    # };
  };
}