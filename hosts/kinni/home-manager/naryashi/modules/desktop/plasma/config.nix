{ pkgs, ... }:

{
  home.packages = with pkgs; [
    catppuccin-kde
    tela-icon-theme
    bibata-cursors
    catppuccin-cursors
    kdePackages.breeze-gtk
  ];

  qt = {
    enable = true;
  };
}
