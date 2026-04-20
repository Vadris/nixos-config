{ config, pkgs, ... }:

{
  networking = {
    firewall = {
      enable = true;
      allowedTCPPorts = [];
      allowedUDPPorts = [];
    };
    
    hostName = "fynns-NixOS";
    networkmanager.enable = true;

  };

  services.ntp.enable = true;
}