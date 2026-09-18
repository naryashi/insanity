{
  ...
}:
{
  imports = [
    ./boot.nix
    ./fs.nix
    ./hardware.nix
    ./hardware-configuration.nix
    #./desktop/niri/default.nix
    ./desktop/gnome/settings/default.nix
    #./desktop/plasma/settings/default.nix
    ./dev/container.nix
    #./dev/libraries.nix
    ./modules/programs/appimage.nix
    ./modules/programs/default.nix
    ./modules/programs/services.nix
    ./modules/system/energy.nix
    ./modules/system/security.nix
    ./modules/system/settings.nix
    ./modules/system/user.nix
    ./packages/default.nix
    ./packages/settings.nix
    #./profiles/powersave.nix
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
