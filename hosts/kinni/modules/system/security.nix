{
  lib,
  pkgs,
  ...
}:
{
    security.apparmor = lib.mkDefault {
    enable = true;
    };

  environment.systemPackages =  with pkgs; [
    apparmor-parser
    apparmor-profiles
    apparmor-pam
    apparmor-utils
    apparmor-bin-utils

  ]; 
 
}