{ self, inputs, ... }: let 

in {
  flake.services.displayManager.sddm = { pkgs, lib, config, ...}: {
    enable = true;
    autoNumlock = true;
    
  };
}