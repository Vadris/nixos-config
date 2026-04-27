{ self, inputs, ... }: let 

in {
  flake.nixosModules.system-qemu = { pkgs, lib, ... }: let 
    
  in {
    imports = [
      self.nixosModules.system-base
    ];

    options = {};
  
    config = {};
  };  
}