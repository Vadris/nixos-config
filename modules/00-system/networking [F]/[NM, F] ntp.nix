{ self, inputs, ... }: {
  flake.nixosModules.ntp = { pkgs, lib, config, ...}: {
    services.ntp.enable = true;
  };
}