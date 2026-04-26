{ self, inputs, ... }: {
  flake.nixosModules.networking.ssh = { pkgs, lib, config, ...}: {
    services.openssh.enable = true;
  };
}