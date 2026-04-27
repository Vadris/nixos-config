{ self, inputs, ... }: let
  
in {
  flake.nixosModules.firewall = { pkgs, lib, config, ...}: let
  in {
    networking.firewall = {
      enable = true;
      allowedTCPPorts = [ 80 ];
    };
  };
}