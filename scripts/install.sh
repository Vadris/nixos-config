#/bin/env bash
# TODO: querry input from user
hostname="-"
disk="-"
sudo nix run 'github:nix-community/disko/latest#disko-install' -- --flake github:vadris/nixos#$hostname --disk nixos $disk

git clone https://github.com/vadris/nixos /etc/nixos/