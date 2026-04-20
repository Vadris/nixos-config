{ config, pkgs, ... }:

{
  networking = {
    firewall = {
      enable = true;
      allowedTCPPorts = [];
      allowedUDPPorts = [];
    };
    
    hostName = "nixos-testing";
    networkmanager.enable = true;

  };

  services.ntp.enable = true;
}