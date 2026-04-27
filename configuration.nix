{ config, pkgs, ... }:

{
  imports =
    [ 
      /etc/nixos/hardware-configuration.nix    # Include the results of the hardware scan.
    ];

  # Enable flakes
  nix.settings.experimental-features = [ "nix-command"] 

  # nVidia driver
  hardware.opengl.driSupport32Bit = true;
  hardware.bluetooth.enable = true;

  services = {

    openssh.enable = false;

    redshift = {
      enable = true;
      latitude = "35";
      longitude = "139";
    };

    nscd.enable = false;

  };

  

  programs.ssh.startAgent = true;
  
  # programs.bash.enableCompletion = true;

  # Don't blind me
  systemd.services.redshift.restartIfChanged = false;

  fonts = {
    fontconfig.enable = true;
    enableFontDir = true;
    enableGhostscriptFonts = true;
    fonts = with pkgs; [
      corefonts
      source-han-sans-japanese
    ];
  };

  security.sudo.enable = true;

  nix = {
    package = pkgs.nixUnstable;
    trustedBinaryCaches = [
      "http://cache.nixos.org"
    ];

    binaryCaches = [
      "http://cache.nixos.org"
    ];

    gc.automatic = false;
    maxJobs = pkgs.stdenv.lib.mkForce 6;
  };
}