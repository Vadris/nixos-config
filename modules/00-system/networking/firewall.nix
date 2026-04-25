{ self, inputs, ... }: {
  flake.nixosModules.networking.firewall = { pkgs, lib, config, ...}: {
    networking.firewall = {
      enable = true;
      allowedTCPPorts = [ 80 ];
    };
  };
}