{
  pkgs,
  lib,
  ...
}: {
  users.users.naryashi = {
    isNormalUser = true;
    description = "naryashi";
    extraGroups = [
      "audio"
      "disk"
      "video"
      "networkmanager"
      "users"
      "docker"
      "kvm"
      "pipewire"
      "flatpak"
      "gamemode"
      "wheel"
      "virtualisation"
      "podman"
      "wireshark"
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
