# insanity-nix ❄️
<div align="center">

*A highly modular, reproducible, and performance-focused NixOS configuration.*

[![NixOS Unstable](https://img.shields.io/badge/NixOS-unstable-blue.svg?logo=nixos&logoColor=white)](https://nixos.org)
[![Flakes](https://img.shields.io/badge/Nix_Flakes-enabled-cyan.svg?logo=nixos&logoColor=white)](https://wiki.nixos.org/wiki/Flakes)
[![Home Manager](https://img.shields.io/badge/Home--Manager-active-green.svg?logo=nixos&logoColor=white)](https://github.com/nix-community/home-manager)

</div>

> **Note**: This setup works for me — on my machine. Yours may differ.

---

## Hardware

| Component | Spec |
|-----------|------|
| Laptop | ThinkBook 14 G3 ACL |
| CPU | Ryzen 5 5600U |
| RAM | 16GB DDR4 (3200 MHz) |
| GPU | AMD Radeon Graphics (integrated) |
---

## Structure
```
├── flake.nix                  # Flake entry point
├── flake.lock                 # Pinned dependencies/inputs
├── script/                    # Helper and automation scripts
│   ├── build.sh               # System rebuild script
│   └── flatpak.sh             # Flatpak integration manager
└── hosts/
    └── kinni/                 # Host-specific configuration
        ├── boot.nix           # Bootloader / Systemd-boot settings
        ├── configuration.nix  # Core NixOS system configuration
        ├── hardware.nix       # Hardware drivers and kernel modules
        ├── fs.nix             # Filesystem mapping and mount points
        │
        ├── insanity/          # System Modules (NixOS Level)
        │   ├── desktop/       # Niri, GNOME, and Plasma setups
        │   ├── profiles/      # Power management profiles (Powersave)
        │   ├── container.nix  # Container support (Docker/Podman)
        │   ├── security.nix   # little things
        │   └── user.nix       # Primary user account declaration
        │
        └── home-manager/      # User Modules (Home-Manager Level)
            └── naryashi/
                ├── home.nix   # Main Home-Manager entry point
                └── modules/   # Terminal (Kitty, Zsh, Starship), PKGs, and Desktop

25 directories, 30 files
```
---

## Note

This is my personal setup.  
It fits my ThinkBook and my preferences.  
Yours may differ — and that's fine.
