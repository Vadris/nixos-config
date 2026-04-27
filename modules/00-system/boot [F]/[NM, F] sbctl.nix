{ self, inputs, ... }: let
  
in {
  flake.nixosModules.sbctl = { pkgs, lib, config, ...}: let
    
  in {
    enviroment.systemPackages = [
      pkgs.sbctl
    ];
  };
}
