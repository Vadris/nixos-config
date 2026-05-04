{ self, inputs, ... }:
let
  hostName = "nix-texting-vm";
  hostnameModule = { pkgs, ... }: { networking.hostName = hostName; };
in {
  flake.nixosConfigurations."${hostName}" = inputs.nixpkgs.lib.nixosSystem {
    modules = [
      hostnameModule
      self.diskoConfigurations.btrfs-efi
      self.nixosModules.system-desktop
      self.nixosModules.zen4-optimizations
    ];
  };
}