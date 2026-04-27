{ self, inputs, ... }: let
  
in {
  flake.nixosModules.kernel-cachyos-latest = {pkgs, ...}: let
    
  in {
    boot.kernelPackages = pkgs.cachyosKernels.linuxPackages-cachyos-latest;
  };
}