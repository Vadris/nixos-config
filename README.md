# NixOS Configuration
My dendritic NixOS configuration using [flake-parts](https://github.com/hercules-ci/flake-parts) modules, [Home Manager](https://github.com/nix-community/home-manager) and [disko](https://github.com/nix-community/disko).

## Start with Template

1. Enable nix-command and flakes
2. Run ```nix flake init -t 'github:vadris/nixos-config``` in the directory where you wish to create your NixOS configuration

The template includes a flake, aswell as template modules, that can be copied to create your own modules.