{ self, inputs, ... }:
{
  flake.nixosModules.systemTypes.base = { pkgs, lib, ... }: {
    imports = [
      
    ];
    
    nix.settings.experimental-features = [ "nix-command" "flakes" ];

    options = {};
  
    config = {};
  };  
}