{ self, inputs, ... }: let

in {
  perSystem = { config, pkgs, lib, ... }: let
    # 1. Fetch the patches directly from the AUR repository's raw cgit interface.
    # We use `lib.fakeHash` initially so Nix will throw an error and give us the correct hash.
    qt5Patch = pkgs.fetchurl {
      url = "https://aur.archlinux.org/cgit/aur.git/plain/qt5ct-shenanigans.patch?h=qt5ct-kde";
      hash = lib.fakeHash; 
    };

    qt6Patch = pkgs.fetchurl {
      url = "https://aur.archlinux.org/cgit/aur.git/plain/qt6ct-shenanigans.patch?h=qt6ct-kde";
      hash = lib.fakeHash;
    };

    # 2. Override the default packages to apply the KDE patches
    qt5ct-kde = pkgs.qt5ct.overrideAttrs (old: {
      pname = "qt5ct-kde";
      patches = (old.patches or []) ++ [ qt5Patch ];
    });

    qt6ct-kde = pkgs.qt6ct.overrideAttrs (old: {
      pname = "qt6ct-kde";
      patches = (old.patches or []) ++ [ qt6Patch ];
    });
  in {
    # 3. Expose them as packages for your flake (e.g., accessible via `nix run .#qt6ct-kde`)
    packages = {
      inherit qt5ct-kde qt6ct-kde;
    };
  };

  # 4. Expose an overlay so your dendritic NixOS and Home Manager
  # configurations can cleanly access them as `pkgs.qt6ct-kde`.
  flake = {
    overlays.default = final: prev: {
      qt5ct-kde = self.packages.${prev.system}.qt5ct-kde;
      qt6ct-kde = self.packages.${prev.system}.qt6ct-kde;
    };
  };
}