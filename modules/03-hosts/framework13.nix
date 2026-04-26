{ self, inputs, ... }:
let 
  hostName = "fynns-framework13";
  hostNameModule = { pkgs, ... }: { networking.hostname = hostName; };
in {
  flake.nixosConfigurations."${hostname}" = inputs.nixpkgs.lib.nixosSystem {
    
    modules = [
      hostnameModule
      # Disk Configuration
      self.diskoConfigurations.btrfsEfi
      # System Configuration
      self.nixosModules.systemTypes.laptop
      # User Configuration
      self.nixosModules.users.fynn
      
    ];
  };
}