{ self, inputs, ... }:
{
  flake.nixosModules.systemTypes.qemu = { pkgs, lib, ... }: {
    imports = [
      self.nixosModules.systemTypes.base
    ];

    options = {};
  
    config = {};
  };  
}