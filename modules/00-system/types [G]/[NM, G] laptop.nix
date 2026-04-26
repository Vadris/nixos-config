{ self, inputs, ... }:
{
  flake.nixosModules.systemTypes.laptop = { pkgs, lib, ... }: {
    imports = [
      self.nixosModules.systemTypes.base
    ];

    options = {};
  
    config = {};
  };  
}