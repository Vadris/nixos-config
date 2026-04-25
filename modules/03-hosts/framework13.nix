{ self, inputs, ... }: {
  flake.nixosConfigurations.fynns-framework13 = inputs.nixpkgs.lib.nixosSystem {
    modules = [
      self.nixosModules.systemTypes.laptop
      
    ];
  };
}