{ self, inputs, ... }:
{
  flake.nixosModules.system-qemu = { pkgs, lib, ... }: {
    imports = [
      self.nixosModules.system-base
    ];

    options = {};
  
    config = {};
  };  
}