{ self, inputs, ... }: {
  flake.nixosModules.ssh-agent = { pkgs, lib, config, ...}: {
    programs.ssh.startAgent = true;
  };
}