{ self, inputs, ... }: let
  
in {
  flake.nixosModules.ntp = { pkgs, lib, config, ...}: let
    
  in {
    services.ntp.enable = true;
  };
}