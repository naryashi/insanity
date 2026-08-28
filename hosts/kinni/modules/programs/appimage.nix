{
  pkgs,
  ...
}:
{
  programs.appimage = {
    enable = true;
    binfmt = true;
    package = pkgs.appimage-run.override {
      extraPkgs = pkgs: [
        pkgs.icu
        pkgs.fuse
        pkgs.libxcrypt-legacy
      ];
    };
  };
}
