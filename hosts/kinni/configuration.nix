{
  ...
}:
{
  imports = [
    ./boot.nix
    ./fs.nix
    ./hardware.nix
    ./hardware-configuration.nix
    #./insanity/desktop/gnome/default.nix
    #./insanity/desktop/niri/default.nix
    ./insanity/desktop/plasma/default.nix
    ./insanity/appimage.nix
    ./insanity/container.nix
    ./insanity/insanity.nix
    ./insanity/security.nix
    ./insanity/user.nix
  ];

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  systemd.services.fwupd-refresh = {
    enable = false;
    wantedBy = [ ];
  };

  system.stateVersion = "26.05";

}
