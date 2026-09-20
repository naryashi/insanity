{
  ...
}:

{
  imports = [

    #DESKTOP
    ./modules/desktop/gnome/config.nix
    #./modules/desktop/niri/default.nix
    #/modules/desktop/niri/noctalia/default.nix

    #PACKAGES
    ./modules/pkgs/default.nix
    ./modules/pkgs/dev.nix

    #terminal and shell
    ./modules/terminal/kitty/kitty.nix
    ./modules/terminal/shell/zsh.nix
    ./modules/terminal/starship/default.nix

    #SETTINGS
    ./modules/settings/fastfetch/fastfetch.nix

  ];

  #home
  home.username = "naryashi";
  home.homeDirectory = "/home/naryashi";
  # home.packages = with pkgs; [

  # ];

  nixpkgs.config.allowUnfree = true;

  home.stateVersion = "25.11";
}
