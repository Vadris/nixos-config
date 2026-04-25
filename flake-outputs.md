**nix run, nix build:**
outputs.packages."SYSTEM".default

**nix develop, nix shell?:**
outputs.devShells."SYSTEM".

**disko-install:**
outputs.diskoConfigurations."HOSTNAME"

**nixos-rebuild:**
outputs.nixosConfigurations."HOSTNAME"

**home-manager:**
outputs.homeConfigurations."USERNAME

**nixos modules:**
outputs.nixosModules

**home-manager modules:**
outputs.homeModules

