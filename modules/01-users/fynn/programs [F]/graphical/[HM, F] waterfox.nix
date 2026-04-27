# TODO: This is defnitly wrong fix this!
{ self, inputs, ...}: let 

in {
  flake.homeModules.fynn-waterfox = { pkgs, ... }: let
    
    in {
    homeModules.fynn.waterfox = {
      home.packages = [
        inputs.waterfox.packages.${pkgs.system}.waterfox-bin
      ];
    };
    
    #  = { pkgs, lib, config, ...}: {
    #   
    # };
  };
}