{
  pkgs,
  ...
}:
{
  home.packages = with pkgs; [
    #extensions
    gnomeExtensions.aurora-shell
    gnomeExtensions.vitals
    gnomeExtensions.just-perfection
    catppuccin-gtk
    catppuccin

    #others
    ptyxis
    gnome-tweaks
    nautilus
    dconf-editor
    gnome-disk-utility
    gnome-calculator
    baobab
  ];

  gtk = {
    enable = true;

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
}
