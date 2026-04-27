{ self, inputs, ... }:
{
  flake.nixosModules.system-desktop = { pkgs, lib, ... }: {
    imports = [
      self.nixosModules.system-base
    ];
    
    options = {};
  
    config = {};
  };  
}