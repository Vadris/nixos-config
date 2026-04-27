{ self, inputs, ... }: {
  flake.nixosConfigurations.<hostname> = inputs.nixpkgs.lib.nixosSystem {
    modules = [
      self.nixosModules.systemTypes.desktop
      self.nixosModules.kernels.realtime
    ];
  };
}