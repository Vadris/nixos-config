{ self, inputs, ... }: {
  flake.nixosModules.programs.sbctl = { pkgs, lib, config, ...}: {
    enviroment.systemPackages = [
      pkgs.sbctl
    ];
  };
}
