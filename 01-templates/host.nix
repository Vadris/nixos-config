{ self, inputs, ... }: {
  flake.nixosConfigurations.<"HOSTNAME"> = inputs.nixpkgs.lib.nixosSystem {
    modules = [
      self.diskoConfigurations.<"DISKOCONFIG">
      self.nixosModules.systemTypes.<"dekstop|laptop">
    ];
  };
}