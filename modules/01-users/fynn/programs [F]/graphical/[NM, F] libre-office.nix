{ self, inputs, ... }: let 
  
in {
  flake.nixosModules.libreOffice = { pkgs, lib, config, ...}: let
    
  in {
    environment.systemPackages = [
      pkgs.libreoffice
    ];
  };
}