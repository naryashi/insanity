{
  inputs,
  pkgs,
  ...
}: {
  imports = [
    inputs.niri.homeModules.niri
    ./noctalia/default.nix
  ];

  programs.niri = {
    enable = true;
    config = builtins.readFile ./config/config.kdl;
  };

  programs = {
    alacritty.enable = false;
    fuzzel.enable = true;
    waybar.enable = false;
  };
  home.packages = with pkgs; [
    swaybg # wallpaper
    xwayland-satellite
  ];
}
