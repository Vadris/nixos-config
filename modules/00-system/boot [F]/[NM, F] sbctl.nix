{ self, inputs, ... }: {
  flake.nixosModules.sbctl = { pkgs, lib, config, ...}: {
    enviroment.systemPackages = [
      pkgs.sbctl
    ];
  };
}
