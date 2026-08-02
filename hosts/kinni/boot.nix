{
  pkgs,
  ...
}:
{
  #kernel and boot

  #boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.kernelPackages = pkgs.linuxPackages_xanmod_latest;
  # Bootloader.
  boot.loader.systemd-boot = {
    enable = true;
    editor = false;
    consoleMode = "keep";
    memtest86.enable = false;
    configurationLimit = 5;
};
  boot.loader.efi.canTouchEfiVariables = true;
  boot.initrd.kernelModules = [ "amdgpu" ];
  boot.kernelParams = [
    "amd_pstate=active"
  ];
  boot.kernel.sysctl = {
    "vm.swappiness" = 30;
  };

}
