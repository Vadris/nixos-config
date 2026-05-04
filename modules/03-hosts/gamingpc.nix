{ self, inputs, ... }:
let
  hostName = "fynns-gamingpc";
  hostNameModule = { pkgs, ... }: { networking.hostName = hostName; };
in {
  flake.nixosConfigurations."${hostName}"= inputs.nixpkgs.lib.nixosSystem {
    system = "x86_64-linux";
    modules = [
      hostNameModule
      self.diskoConfigurations.btrfs-efi
      self.nixosModules.system-desktop
      self.nixosModules.zen4-optimizations
      # self.nixosModules.nvidia
    ];
  };
}