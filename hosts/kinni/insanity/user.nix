{
  pkgs,
  lib,
  ...
}:
{
  users.users.naryashi = {
    isNormalUser = true;
    description = "naryashi";
    extraGroups = [
      "networkmanager"
      "wheel"
      "audio"
      "docker"
      "podman"
      "virtualisation"
    ];
    subGidRanges = [
      {
        count = 65536;
        startGid = 100000;
      }
    ];
    subUidRanges = [
      {
        count = 65536;
        startUid = 100000;
      }
    ];
    ignoreShellProgramCheck = true;
    shell = pkgs.zsh;
  };
}
