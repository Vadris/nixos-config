{ self, inputs, ... }:let

in {

  flake.nixosModules.zen4-optimizations = { pkgs, lib, config, ...}: let 
  
  in {
    nixpkgs.hostPlatform = {
      gcc.arch = "znver4";
      gcc.tune = "znver4";
      system = "x86_64-linux";
    };
  }; 
}