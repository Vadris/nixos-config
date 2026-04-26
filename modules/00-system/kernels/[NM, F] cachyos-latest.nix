{ self, inputs, ... }: {
  flake.nixosModules.kernels.cachyos-latest =  {
    boot.kernelPackages = pkgs.cachyosKernels.linuxPackages-cachyos-latest;
  };
}