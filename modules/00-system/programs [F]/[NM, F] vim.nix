{ self, inputs, ... }: let

in {
  flake.nixosModules.vim = { pkgs, ... }: let 
  
  in {
    enviroment.systemPackages = [
      pkgs.vim
    ];
  };
}