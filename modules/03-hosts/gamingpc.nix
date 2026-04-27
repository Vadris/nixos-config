{ self, inputs, ... }:
let
  hostName = "fynns-gamingpc";
  hostNameModule = { pkgs, ... }: { networking.hostName = hostName; };
in {
  flake.nixosConfigurations."${hostName}"= inputs.nixpkgs.lib.nixosSystem {
    modules = [
      # hostNameModule
      self.diskoConfigurations.btrfsEfi
      self.nixosModules.system-desktop
      # self.nixosModules.nvidia
    ];
  };
}