{ self, inputs, ... }: {
  flake.nixosModules.kernels.cachyos-latest = {pkgs, ...}: {
    boot.kernelPackages = pkgs.cachyosKernels.linuxPackages-cachyos-latest;
  };
}