{ self, inputs, ... }: let 

in {
  flake.nixosModules.sddm = { pkgs, lib, config, ...}: {
    enable = true;
    autoNumlock = true;
    
  };
}