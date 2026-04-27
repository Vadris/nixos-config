{ self, inputs, ... }: let 

in {
  flake.nixosModules.nmap = { pkgs, lib, config, ... }: let
    
  in {
    environment.systemPackages = [
      pkgs.nmap
    ];
  };
} 