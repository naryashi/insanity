{
  pkgs,
  ...
}:
{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    oh-my-zsh = {
      enable = true;
      plugins = [
        "git"
        "copypath"
        "sudo"
      ];
    };
    shellAliases = {
      #system
      off = "shutdown now";
      upd-all = "nh os switch -u && nh home switch -u";
      os = "echo 'NixOS'";
      #games`
      osu-wine = "steam-run osu-wine";

      #formatter test
      fmt-test = "find . -name '*.nix' -type f";
      
      #utils
      ls = "eza --icons";
      ll = "eza -l --icons --git";
      tree = "eza --tree --icons";
      cat = "bat";
      grep = "rg";
      find = "fd";
    };
  };
  home.packages = with pkgs; [
    oh-my-zsh
  ];
}
