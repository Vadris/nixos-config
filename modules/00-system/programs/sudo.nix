{ self, inputs, ... }: {
  flake.nixosModules.programs.sudo = { pkgs, lib, config, ...}: {
    security.sudo.enable = true;
  };
}