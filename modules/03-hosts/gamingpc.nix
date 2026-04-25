{ self, inputs, ... }: {
  flake.nixosConfigurations.fynns-gamingpc = inputs.nixpkgs.lib.nixosSystem {
    modules = [
      self.diskoConfigurations.btrfsEfi
      self.nixosModules.systemTypes.desktop
    ];
  };
}