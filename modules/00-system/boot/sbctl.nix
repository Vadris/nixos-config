{ self, inputs, ... }: {
  flake.nixosModules.programs.vim = { pkgs, lib, config, ...}: {
    perSystem = { pkgs, ... }: {
      enviroment.systemPackages = [
        pkgs.sbctl
      ];
    };
  };
}