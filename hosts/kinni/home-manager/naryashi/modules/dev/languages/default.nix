{
  pkgs,
  ...
}:
{
  home.packages = with pkgs; [
    # Build System & Core Tools
    gnumake
    cmake
    ninja
    pkg-config

    # C/C++ Toolchain
    clang
    clang-tools

    # Nix Toolchain
    nix
    nil
    nixfmt
    nix-tree
    nix-update
    deadnix
    statix
    nix-eval-jobs

    # Python Toolchain
    python3
    uv
    ruff
    pyright
    mypy

    # Rust Toolchain
    rustup
    cargo-watch
    rustc

    #C#
    dotnet-sdk
    mono

    #java
    openjdk
    openjdk21
    nixpkgs-openjdk-updater
  ];
}
