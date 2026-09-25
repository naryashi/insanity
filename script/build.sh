#!/usr/bin/env bash
#automatized install :)


sudo rm -rf ~/insanity/hosts/kinni/hardware-configuration.nix

sudo mv ~/insanity

sudo chown -R naryashi:users ~/insanity

sudo chmod u+w ~/insanity

sudo cp /etc/nixos/hardware-configuration.nix ~/insanity/hosts/kinni

clear

sudo nixos-rebuild switch --flake path:insanity#kinni

NH_OS_FLAKE=insanity nh os switch -u

./flatpak.sh

echo "End :3"
