{ self, inputs, ... }:
{
  flake.nixosModules.system-laptop = { pkgs, lib, ... }: {
    imports = [
      self.nixosModules.system-base
    ];

    options = {};
  
    config = {};
  };  
}