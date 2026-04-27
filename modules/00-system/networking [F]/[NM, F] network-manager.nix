{ self, inputs, ... }: let
  
in {
  flake.nixosModules.networkManager = { lib, pkgs, config, ... }: let
  
  in{
    networking.networkmanager = {
      enable = true;
      
    };
  };
}