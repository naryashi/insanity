{
  lib,
  pkgs,
  ...
}:
{

  services = {
    #SDDM
    displayManager.plasma-login-manager.enable = true;

    #PLASMA ENVIROMENT
    desktopManager.plasma6.enable = true;
  };
  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    elisa
    gwenview
    kdenlive
    k3b
    kmail
    korganizer
    akregator
    ktorrent
    kget
    kdebugsettings
    ksystemlog
    kcron
    kmousetool
    kmag
    plasma-browser-integration
    oxygen
    #breeze-grub
    #breeze-plymouth

  ];
}
