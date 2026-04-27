{ self, inputs, ... }: {
  flake.nixosModules.sudo = { pkgs, lib, config, ...}: {
    security.sudo.enable = true;
  };
}