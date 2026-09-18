{
  pkgs,
  ...
}:
{
  home.packages = with pkgs; [
    #extensions
    gnomeExtensions.dash2dock-lite
    gnomeExtensions.aurora-shell
    gnomeExtensions.just-perfection
    gnomeExtensions.blur-my-shell
    catppuccin-gtk
    catppuccin

    #fonts
    fira-code-symbols
    fira-code

    #others 
    ptyxis
    gnome-tweaks
    nautilus
    dconf-editor
    gnome-color-manager
    gnome-disk-utility
    baobab
  ];

  #programs.dconf.enable = true;

/*
  gtk = {
    enable = true;

    theme = {
      name = "catppuccin";
      package = pkgs.palenight-theme;
    };

    cursorTheme = {
      name = "Numix-Cursor";
      package = pkgs.numix-cursor-theme;
    };

    gtk3.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };

    gtk4.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };
  };
*/
  home.sessionVariables.GTK_THEME = "palenight";
  # ...

}