{
  lib,
  pkgs,
  ...
}:
{
  /*
    the most of settings of the systemk still here, energy, audio, nh settings,
    and default packages for the system.
    others settings like security, internet and others still in "security.nix" (in this folder).
    in order is pkgs -> programs and services -> unfree -> energy ->
    ^ hardware -> audio for low latency -> locale -> keyboard -nix settings -> nh (nix helper utility)
  */
  #pkgs
  environment.systemPackages = with pkgs; [
    #GENERAL USE
    piper
    libratbag
    nh
    tlp
    home-manager
  ];


    programs = {
    firefox.enable = true;
    dconf.enable = true;
    gamemode.enable = true;
    steam.enable = true;
    direnv.enable = true;
  };
    services = {
    xserver.enable = false;
    flatpak.enable = true;
    ratbagd.enable = true;
    upower.enable = true;
  };
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  nixpkgs.config.allowUnfreePredicate =
    pkg:
    builtins.elem (lib.getName pkg) [
      "steam"
    ];

    #POWER SESSION
/*
  services.tlp = lib.mkDefault {
    enable = true;
    settings = {
      CPU_BOOST_ON_AC = 1;
      CPU_BOOST_ON_BAT = 0;
      CPU_HWP_DYN_BOOST_ON_AC = 1;
      CPU_HWP_DYN_BOOST_ON_BAT = 1;
      CPU_SCALING_GOVERNOR_ON_AC = "performance";
      CPU_SCALING_GOVERNOR_ON_BAT = "powersave";
      CPU_ENERGY_PERF_POLICY_ON_AC = "performance";
      CPU_ENERGY_PERF_POLICY_ON_BAT = "power";
      PLATFORM_PROFILE_ON_AC = "performance";
      PLATFORM_PROFILE_ON_BAT = "power";
      CPU_MIN_PERF_ON_BAT = 0;
      CPU_MAX_PERF_ON_BAT = 35;
      START_CHARGE_THRESH_BAT0 = 55;
      STOP_CHARGE_THRESH_BAT0 = 65;

      #LP_DEFAULT_MODE = "AC";
      #TLP_PERSISTENT_DEFAULT = 1;

    };
  };
*/
  services.power-profiles-daemon.enable = true;

  powerManagement = {
    enable = true;
    cpuFreqGovernor = "performance";
    cpufreq.max = null;
    cpufreq.min = null;
  };
  #END POWER SESSION

    hardware.bluetooth.enable = true;

  #AUDIO
  #jack, pulse, real time and compatibility
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true; # professional setting
  };

  #low latency for jack
  services.pipewire.extraConfig.pipewire."92-low-latency" = {
    "context.properties" = {
      "default.clock.rate" = 48000;
      "default.clock.quantum" = 128;
      "default.clock.min-quantum" = 64;
      "default.clock.max-quantum" = 512;
    };
  };

  #latency and clients
  services.pipewire.extraConfig.pipewire-pulse."92-low-latency" = {
    "pulse.properties" = {
      "pulse.min.req" = "64/48000";
      "pulse.default.req" = "64/48000";
      "pulse.max.req" = "128/48000";
    };
  };

  #locale
  # Set your time zone.
  time.timeZone = "America/Sao_Paulo";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "pt_BR.UTF-8";
    LC_IDENTIFICATION = "pt_BR.UTF-8";
    LC_MEASUREMENT = "pt_BR.UTF-8";
    LC_MONETARY = "pt_BR.UTF-8";
    LC_NAME = "pt_BR.UTF-8";
    LC_NUMERIC = "pt_BR.UTF-8";
    LC_PAPER = "pt_BR.UTF-8";
    LC_TELEPHONE = "pt_BR.UTF-8";
    LC_TIME = "pt_BR.UTF-8";
  };

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # Configure console keymap
  console.keyMap = "us";

  #NIX-SETTINGS
  nix.settings = lib.mkDefault {
    auto-optimise-store = true;
    cores = 0;
    max-jobs = "auto";
    sandbox = true;
  };
  programs.nh = {
    enable = true;
    clean.enable = true;
  };
  
  
  #flake and home dir
  environment.variables.NH_FLAKE = "insanity";
  environment.variables.NH_OS_FLAKE = "insanity";
  environment.variables.NH_HOME_FLAKE = "insanity";
    #packages = with pkgs; [
    #];
}
