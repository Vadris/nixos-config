{ self, inputs, ... }: {
  flake.nixosModules.kernel-cachyos-latest = {pkgs, ...}: {
    boot.kernelPackages = pkgs.cachyosKernels.linuxPackages-cachyos-latest;
  };
}