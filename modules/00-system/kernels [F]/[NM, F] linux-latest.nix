{ self, inputs, ... }: let
  
in {
  flake.nixosModules.kernel-linux-latest = { pkgs, lib, config, ...}: let
    
  in {
    boot.kernelPackages = pkgs.linuxPackages_latest;
  };
}