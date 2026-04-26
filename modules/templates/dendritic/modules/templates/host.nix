{ self, inputs, ... }:
let
  hostName = "<HOSTNAME>";
  hostnameModule = { pkgs, ... }: { networking.hostname = hostName; };
in {
  flake.nixosConfigurations."${hostName}" = inputs.nixpkgs.lib.nixosSystem {
    modules = [
    ];
  };
}