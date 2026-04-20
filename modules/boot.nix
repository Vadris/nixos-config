{ config, pkgs, ... }:

{
  boot = {
    blacklistedKernelModules = [ "snd_pcsp" ];
    kernelPackages = pkgs.linuxPackages_latest;
    cleanTmpDir = true;

    loader = {
      efi.canTouchEfiVariables = true;
      grub = {
        efiSupport = true;
        device = "nodev";
      };
    };

    supportedFilesystems = [
      "exfat"
      "btrfs"
    ];
  };
}