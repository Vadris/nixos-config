{ self, inputs, ... }:
let
  hostName = "fynns-gamingpc";
  hostnameModule = { pkgs, ... }: { networking.hostname = hostName; };
in {
  flake.nixosConfigurations."${hostName}"= inputs.nixpkgs.lib.nixosSystem {
    modules = [
      hostNameModule
      self.diskoConfigurations.btrfsEfi
      self.nixosModules.systemTypes.desktop
    ];
  };
}