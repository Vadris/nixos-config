{ config, pkgs, ... }:

{
  nixpkgs.system = "x86_64-linux";
  nixpkgs.config = {
    # virtualbox.enableExtensionPack = true;
    # pulseaudio = true;
    allowUnfree = true;
  };

  environment.systemPackages = with pkgs;
    [ 
      wget
      nano
    ];
}