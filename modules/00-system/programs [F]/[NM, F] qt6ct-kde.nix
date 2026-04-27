{ self, inputs, ... }: let 
  
in {
  flake.nixosModules.sudo = { pkgs, lib, config, ...}: let
    
  in {
    environment.systemPackages = with pkgs; [
      (kdePackages.qt6ct.overrideAttrs (oldAttrs: {
        pname = "qt6ct-kde";
        # This fetches the specific patch used to enable KDE color scheme support
        patches = (oldAttrs.patches or []) ++ [
          (fetchpatch {
            url = "https://raw.githubusercontent.com/archlinux/svntogit-community/packages/qt6ct/trunk/kde-color-scheme-support.patch";
            sha256 = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA="; # Run 'nix-build' to get the real hash
          })
        ];
      }))
    ];
  };
}