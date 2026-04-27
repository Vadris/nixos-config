{ self, inputs, ... }: let
in {
  flake.nixosModules.system-laptop = { pkgs, lib, ... }: let 

  in {
    imports = [
      self.nixosModules.system-base
    ];

    options = {};
  
    config = {};
  };  
}