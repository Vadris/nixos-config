{ self, inputs, ... }: let 
  
in {
  flake.nixosModules.sudo = { pkgs, lib, config, ...}: let
    
  in {
    security.sudo.enable = true;
  };
}