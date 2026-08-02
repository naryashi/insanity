#!/usr/bin/env bash
#automatized install :)


sudo rm -rf ~/midnight/hosts/kinni/hardware-configuration.nix

sudo mv ~/midnight  /

sudo chown -R naryashi:users /midnight

sudo chmod u+w /midnight

sudo cp /etc/nixos/hardware-configuration.nix /midnight/hosts/kinni

clear

sudo nixos-rebuild switch --flake path:/midnight#kinni

NH_OS_FLAKE=/midnight nh os switch -u

echo "End :3"
