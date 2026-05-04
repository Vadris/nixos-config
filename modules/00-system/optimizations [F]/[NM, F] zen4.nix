{ self, inputs, ... }:let

in {

  flake.nixosModules.zen4-optimizations = { pkgs, lib, config, ...}: let 
  
  in {
    nixpkgs.gcc.arch = "zenver4";
    nixpkgs.gcc.tune = "zenver4";
  } 
}