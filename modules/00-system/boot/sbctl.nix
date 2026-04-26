{ self, inputs, ... }: {
  flake.nixosModules.programs.sbctl = { pkgs, lib, config, ...}: {
    perSystem = { pkgs, ... }: {
      enviroment.systemPackages = [
        pkgs.sbctl
      ];
    };
  };
}