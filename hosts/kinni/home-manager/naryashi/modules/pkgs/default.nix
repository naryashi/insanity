{
  pkgs,
  ...
}:
{

  home.packages = with pkgs; [

    #system tools
    cpu-x
    btrfs-progs
    mission-center
    gparted
    alsa-utils

    #terminal
    kitty
    fastfetch
    git
    curl
    fish
    ncdu
    grc
    starship
    tree
    wget
    unzip
    onefetch

    #fonts
    nerd-fonts.adwaita-mono
    nerd-fonts.symbols-only
    nerd-fonts.victor-mono

    #games
    gamemode
    steam
    steam-run
    heroic
    gpu-screen-recorder-gtk

  ];

}
