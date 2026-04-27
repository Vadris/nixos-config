#/bin/env bash
set -o pipefail

# TODO: querry input from user
sudo nix run 'github:nix-community/disko/latest#disko-install' -- --flake github:vadris/nixos-config#$hostname --disk nixos $disk

git clone https://github.com/vadris/nixos-config /etc/nixos/

