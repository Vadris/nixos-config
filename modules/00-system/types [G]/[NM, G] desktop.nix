{ self, inputs, ... }: let

in {
  flake.nixosModules.system-desktop = { pkgs, lib, ... }: let 
    
  in {
    imports = [
      self.nixosModules.system-base
    ];
    
    options = {};
  
    config = {};
  };  
}