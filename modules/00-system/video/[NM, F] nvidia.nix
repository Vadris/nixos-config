{ self, inputs, ... }: {
  flake.nixosModules.nvidia =  { pkgs, lib, config, ...}: {
    hardware.graphics.enable = true;
    services.xserver.videoDrivers = [ "nvidia" ];
    hardware.nvidia.open = true;  # see the note above
    hardware.opengl.driSupport32Bit = true;
  };
}