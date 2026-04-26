{ self, inputs, ... }: {
  flake.nixosModules.networking.ssh-agent = { pkgs, lib, config, ...}: {
    programs.ssh.startAgent = true;
  };
}