{ self, inputs, ... }:
let
  hostName = "nix-texting-vm";
  hostnameModule = { pkgs, ... }: { networking.hostname = hostName; };
in {
  flake.nixosConfigurations."${hostName}" = inputs.nixpkgs.lib.nixosSystem {
    modules = [
      hostnameModule
      self.diskoConfigurations.btrfs-efi
      self.nixosModules.system-desktop
    ];
  };
}