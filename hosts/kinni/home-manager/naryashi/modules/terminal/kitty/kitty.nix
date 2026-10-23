{pkgs, ...}: {
  imports = [
    ../shell/zsh.nix
  ];

  programs.kitty = {
    enable = true;
    enableGitIntegration = true;
    themeFile = "tokyo_night_storm";
    shellIntegration.enableZshIntegration = true;
    settings = {
      shell = "${pkgs.zsh}/bin/zsh";
    };
  };
  programs.starship.enable = true;
}
