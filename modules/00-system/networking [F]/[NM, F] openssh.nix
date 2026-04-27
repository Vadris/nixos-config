{ self, inputs, ... }: {
  flake.nixosModules.openssh = { pkgs, lib, config, ...}: {
    services.openssh.enable = true;
  };
}