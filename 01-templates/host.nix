{ self, inputs, ... }:
let
  hostName = "fynns-gamingpc";
  hostnameModule = { pkgs, ... }: { networking.hostname = hostName; };
in {
  flake.nixosConfigurations."${hostName}" = inputs.nixpkgs.lib.nixosSystem {
    modules = [
      self.diskoConfigurations.<"DISKOCONFIG">
      self.nixosModules.systemTypes.<"dekstop|laptop">
    ];
  };
}