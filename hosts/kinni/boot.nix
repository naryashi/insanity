{pkgs, ...}: {
  #kernel and boot

  boot.kernelPackages = pkgs.linuxPackages_latest;
  #boot.kernelPackages = pkgs.linuxPackages_xanmod_latest;
  # Bootloader.
  boot.loader.systemd-boot = {
    enable = false;
    /*
    editor = false;
    consoleMode = "keep";
    memtest86.enable = false;
    configurationLimit = 5;
    */
  };

  #grub
  boot.loader.grub = {
    enable = true;
    splashMode = "normal";
    device = "nodev";
    efiSupport = true;
    useOSProber = false;
  };

  boot.loader.efi.canTouchEfiVariables = true;
  boot.initrd.kernelModules = ["amdgpu"];
  boot.kernelParams = [
    "amd_pstate=active"
  ];
  boot.kernel.sysctl = {
    "vm.swappiness" = 40;
  };
}
