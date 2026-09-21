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

    #fonts
    fira-code-symbols
    fira-code
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
