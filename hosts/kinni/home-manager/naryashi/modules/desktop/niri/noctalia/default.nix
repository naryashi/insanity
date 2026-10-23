{inputs, ...}: {
  imports = [
    inputs.noctalia.homeModules.default
  ];

  programs.noctalia = {
    enable = true;
    settings = {
      applauncher = {
        density = "default";
        pinnedApps = [];
        position = "center";
        showCategories = true;
      };

      bar = {
        barType = "simple";
        capsuleColorKey = "none";
        density = "default";
        displayMode = "always_visible";
        fontScale = 1;
        frameRadius = 12;
        marginHorizontal = 4;
        marginVertical = 4;
        widgetSpacing = 6;
      };
      bar.widgets.center = {
        id = "MediaMini";
      };
      bar.widgets.left = {
        id = [
          "Workspace"
          "Clock"
          "systemMonitor"
        ];
      };
      bar.widgets.right = {
        id = [
          "Tray"
          "NotificationHistory"
          "Battery"
          "Volume"
          "ControlCenter"
        ];
      };

      colorSchemes = {
        darkMode = true;
        generationMethod = "tonal-spot";
        manualSunrise = "06:30";
        manualSunset = "18:30";
        monitorForColors = "";
        predefinedScheme = "Tokyo Night";
        schedulingMode = "off";
        syncGsettings = true;
        useWallpaperColors = false;
      };
      dock = {
        enable = false;
      };
      general = {
        allowPanelsOnScreenWithoutBar = true;
        allowPasswordWithFprintd = false;
        animationDisabled = false;
        animationSpeed = 0.9;
        autoStartAuth = false;
        avatarImage = "";
        boxRadiusRatio = 1;
        clockStyle = "custom";
        compactLockScreen = false;
        dimmerOpacity = 0.2;
        enableBlurBehind = true;
        enableLockScreenCountdown = true;
        enableLockScreenMediaControls = false;
        enableShadows = false;
        forceBlackScreenCorners = false;
        iRadiusRatio = 1;
        language = "";
        lockOnSuspend = true;
        lockScreenAnimations = false;
        lockScreenBlur = 8;
        lockScreenCountdownDuration = 10000;
        lockScreenMonitors = [];
        lockScreenTint = 0;
        passwordChars = false;
        radiusRatio = 1;
        reverseScroll = false;
        scaleRatio = 1;
        screenRadiusRatio = 1;
        shadowDirection = "bottom_right";
        shadowOffsetX = 2;
        shadowOffsetY = 3;
        showChangelogOnStartup = true;
        showHibernateOnLockScreen = false;
        showScreenCorners = false;
        showSessionButtonsOnLockScreen = true;
        smoothScrollEnabled = true;
        telemetryEnabled = false;
      };

      idle = {
        customCommands = "[]";
        enabled = false;
        fadeDuration = 5;
        lockCommand = "";
        lockTimeout = 660;
        resumeLockCommand = "";
        resumeScreenOffCommand = "";
        resumeSuspendCommand = "";
        screenOffCommand = "";
        screenOffTimeout = 600;
        suspendCommand = "";
        suspendTimeout = 1800;
      };
      noctaliaPerformance = {
        disableDesktopWidgets = false;
        disableWallpaper = false;
      };
    };
  };
}
