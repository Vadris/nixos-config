{ self, inputs, ... }: let

in {
  perSystem = { config, pkgs, lib, ... }: let
    qt5Patch = pkgs.fetchurl {
      url = "https://aur.archlinux.org/cgit/aur.git/plain/qt5ct-shenanigans.patch?h=qt5ct-kde";
      hash = lib.fakeHash; 
    };

    qt6Patch = pkgs.fetchurl {
      url = "https://aur.archlinux.org/cgit/aur.git/plain/qt6ct-shenanigans.patch?h=qt6ct-kde";
      hash = lib.fakeHash;
    };

    qt5ct-kde = pkgs.libsForQt5.qt5ct.overrideAttrs (old: {
      pname = "qt5ct-kde";
      patches = (old.patches or []) ++ [ qt5Patch ];
    });

    qt6ct-kde = pkgs.qt6Packages.qt6ct.overrideAttrs (old: {
      pname = "qt6ct-kde";
      patches = (old.patches or []) ++ [ qt6Patch ];
    });
  in {

    packages = {
      inherit qt5ct-kde qt6ct-kde;
    };
    
  };

  flake = {
    overlays.default = final: prev: {
      qt5ct-kde = self.packages.${prev.system}.qt5ct-kde;
      qt6ct-kde = self.packages.${prev.system}.qt6ct-kde;
    };
  };
}