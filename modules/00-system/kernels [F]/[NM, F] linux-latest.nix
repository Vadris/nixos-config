{ self, inputs, ... }: {
  flake.nixosModules.kernel-linux-latest = { pkgs, lib, config, ...}: {
    boot.kernelPackages = pkgs.linuxPackages_latest;
  };
}