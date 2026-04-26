{ self, inputs, ... }: {
  flake.nixosModules.networking.ntp = { pkgs, lib, config, ...}: {
    services.ntp.enable = true;
  };
}