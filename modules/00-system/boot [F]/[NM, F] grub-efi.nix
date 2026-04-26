{ self, inputs, ... }: {
  flake.nixosModules.boot.grubEfi = { pkgs, lib, ... }: {
    boot.loader.grub = {
      enable = true;
      efiSupport = true;
      device = "nodev"; # "nodev" for EFI
    };

    boot.loader.efi.canTouchEfiVariables = true;
    
    # TODO: Set this though an option
    boot.supportedFilesystems = [
      "exfat"
      "btrfs"
    ];
  };
}