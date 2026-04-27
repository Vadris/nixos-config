{ self, inputs, ... }: {
  flake.nixosModules.firewall = { pkgs, lib, config, ...}: {
    networking.firewall = {
      enable = true;
      allowedTCPPorts = [ 80 ];
    };
  };
}