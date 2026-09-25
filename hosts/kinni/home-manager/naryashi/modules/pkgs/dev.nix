{
  pkgs,
  ...
}:
{
  home.packages = with pkgs; [
    /*
      Build System & Core Tools
      gnumake
      cmake
      ninja
      pkg-config

      # C/C++ Toolchain
      clang
      clang-tools
    */
    # Nix Toolchain
    nix
    nil
    nixfmt
    nix-tree
    nix-update
    nix-eval-jobs

    # Python Toolchain
    python3
    pyright

    # Rust Toolchain
    rustup
    cargo-watch
    rustc
    cargo-expand
    cargo-audit
    cargo-deny
    cargo-flamegraph

    #Csharp
    dotnet-sdk
    mono

    #java
    openjdk
    openjdk21
    nixpkgs-openjdk-updater

    helix
    vscode
    jetbrains.pycharm
    jetbrains.idea
    jetbrains.rust-rover
    #jetbrains.webstorm
  ];
}
