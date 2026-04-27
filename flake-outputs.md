**nix run, nix build:**
outputs.packages."SYSTEM".default

**nix develop, nix shell?:**
outputs.devShells."SYSTEM".default

**nixos-rebuild:**
outputs.nixosConfigurations."HOSTNAME"

**home-manager:**
outputs.homeConfigurations."USERNAME"