{ self, inputs, ... }:
let 
  hostName = "fynns-framework13";
  hostNameModule = { pkgs, ... }: { networking.hostName = hostName; };
in {
  flake.nixosConfigurations."${hostName}" = inputs.nixpkgs.lib.nixosSystem {
    system = "x86_64-linux";
    modules = [
      hostNameModule
      # Disk Configuration
      self.diskoConfigurations.btrfs-efi
      # System Configuration
      self.nixosModules.system-laptop
      # User Configuration
      # self.nixosModules.users.fynn
      self.nixosModules.zen4-optimizations
      
    ];
  };
}