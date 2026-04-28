{ self, inputs, ... }: let
  
in {
  flake.nixosModules.efibootmgr = { pkgs, lib, config, ...}: let
    
  in {
    enviroment.systemPackages = [
      pkgs.efibootmgr
    ];
  };
}
