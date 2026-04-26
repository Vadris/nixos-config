{ self, inputs, ... }: {
  flake.nixosConfigurations.fynns-framework13 = inputs.nixpkgs.lib.nixosSystem {
    modules = [
      # Disk Configuration
      self.diskoConfigurations.btrfsEfi
      # System Configuration
      self.nixosModules.systemTypes.laptop
      # User Configuration
      self.nixosModules.users.fynn
      { ...}: { networking.hostname = "framework13" }
    ];
  };
}