{ self, inputs, ... }: {
  flake.nixosConfigurations.fynns-gamingpc = inputs.nixpkgs.lib.nixosSystem {
    modules = [
      self.nixosModules.systemTypes.desktop
      self.nixosModules.kernels.realtime
    ];
  };
}