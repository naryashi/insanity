{
  pkgs,
  ...
}:
{

  #CLI tools, QoL and DevOps
  home.packages = with pkgs; [
    eza
    bat
    ripgrep
    fd
    fzf
    zoxide
    btop
    jq
    yq-go
    tldr
    zellij
    k9s
    kubectl
    helmfile
    lazygit
    nix-output-monitor

    #personal use (in the most time)
    fastfetch
    git
    curl
    fish
    ncdu
    grc
    starship
    tree
    wget
    unzip
    onefetch
  ];

}
