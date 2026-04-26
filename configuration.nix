{ config, pkgs, ... }:

{
  imports =
    [ 
      /etc/nixos/hardware-configuration.nix    # Include the results of the hardware scan.
    ];

  # Enable flakes
  nix.settings.experimental-features = [ "nix-command"] 

  # nVidia driver
  
  hardware.bluetooth.enable = true;

  services = {

    nscd.enable = false;

  };

  fonts = {
    fontconfig.enable = true;
    enableFontDir = true;
    enableGhostscriptFonts = true;
    fonts = with pkgs; [
      corefonts
      source-han-sans-japanese
    ];
  };
}