{
  inputs,
  pkgs,
  ...
}:
{
  environment.systemPackages = with pkgs; [
    niri
    inputs.noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default
    xdg-desktop-portal-gnome
    xdg-desktop-portal-gtk
    kdePackages.xdg-desktop-portal-kde
  ];

  programs.niri = {
    enable = true;
  };

  services.dbus.enable = true;
  security.polkit.enable = true;
  systemd.user.services.niri-flake-polkit.enable = false;
  programs.xwayland.enable = true;

  xdg.portal = {
    config.niri = {
      "org.freedesktop.impl.portal.FileChooser" = [ "kde" ]; # or "kde"
    };

    enable = true;
    extraPortals = with pkgs; [
      #xdg-desktop-portal-gnome
      #xdg-desktop-portal-gtk
      kdePackages.xdg-desktop-portal-kde
    ];
    config.common = {
      default = "plasma";
    };
  };
  xdg.portal.xdgOpenUsePortal = true;
}
