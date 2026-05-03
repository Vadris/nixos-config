{ self, inputs, ... }: let 

in {
  flake.nixosModules.quickshell = { pkgs, lib, config, ...}: let
    
  in {
    enviroment.systemPackages = [
      pkgs.quickshell
    ];
  };
}