{ self, inputs, ... }: let
  
in {
  flake.nixosModules.openssh = { pkgs, lib, config, ...}: let 
  
  in {   
    services.openssh.enable = true;
  };
}