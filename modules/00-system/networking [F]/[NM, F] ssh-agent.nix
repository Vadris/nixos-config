{ self, inputs, ... }: let

in {
  flake.nixosModules.ssh-agent = { pkgs, lib, config, ...}: let
    
  in {
    programs.ssh.startAgent = true;
  };
}