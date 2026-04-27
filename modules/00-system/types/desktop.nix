{ self, inputs, ... }:
{
  flake.nixosModules.systemTypes.desktop = { pkgs, lib, ... }: {
    imports = [
      self.nixosModules.systemTypes.base
    ];

    options = {};
  
    config = {};
  };  
}