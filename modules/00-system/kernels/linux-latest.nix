{ self, inputs, ... }: {
  flake.nixosModules.kernels.linux-latest = { pkgs, lib, config, ...}: {
    boot.kernelPackages = pkgs.linuxPackages_latest;
  };
}