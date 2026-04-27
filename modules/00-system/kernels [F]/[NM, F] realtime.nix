{ inputs, self, ... }: let
  
in {
  flake.nixosModules.kernel-linux-realtime = { pkgs, lib, ... }: let
    
  in {
    boot.kernelPackages = pkgs.linuxPackages_realtime; # Idk if this is correct
  };
}