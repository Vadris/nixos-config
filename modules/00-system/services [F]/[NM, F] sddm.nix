{ self, inputs, ... }: let 

in {
  flake.nixosModules.sddm = { pkgs, lib, config, ...}:let
    
  in {
    enable = true;
    autoNumlock = true;
    # TODO: declare theme
  };
}