{ self, inputs, ... }: {
  flake.nixosConfigurations.<hostname> = inputs.nixpkgs.lib.nixosSystem {
    modules = [
      self.nixosModules.systemTypes.laptop
      
    ];
  };
}