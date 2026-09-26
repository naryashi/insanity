{
  pkgs,
  lib,
  ...
}:
{
  security.apparmor = lib.mkDefault {
    enable = true;
  };

  #pkgs
  environment.systemPackages = with pkgs; [
    apparmor-parser
    apparmor-profiles
    apparmor-pam
    apparmor-utils
    apparmor-bin-utils
  ];

  #NETWORK
  #network
  networking.hostName = "kinni"; # Define hostname.

  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  networking.networkmanager.wifi.powersave = false;
  networking.networkmanager.enable = true;

  #firewall
  networking.firewall.enable = true;
  services.networkd-dispatcher = {
    enable = false;

  };

  #systemd hardening process 
   # This is where the real unit options are set
    serviceConfig = {

      # Mount the entire fs as read-only. 
      #ProtectSystem = "strict";

      # Should almost always be used.
      # Only use a different value if running a binary for a different CPU
      # architecture, for example x86 on x64
      # 
      # Can almost always be set.
      SystemCallArchitectures = "native";

      # Make /proc unreadable by the service
      # 
      # Can almost always be set.
      #ProtectProc = "invisible";

      # Run within a fs namespace.
      # Implied by other options, but good to make explicit.
      #
      # Should almost always be true.
      #PrivateMounts = true;

      # Makes /dev mostly empty except for /dev/null and other pseudo devices.
      # Makes /dev read-only. Note that is disables all /dev access, so
      # for services that need devices, see the below attribute.
      #
      # Should usually be enabled, unless the service need hardware acceleration
      #PrivateDevices = true;

      # Specific devices to allow under /dev
      # Note that if set, `PrivateDevices` must be false.
      # Usually needed for services that use GPU, hwaccel, or the system clocks
      # 

      # Creates a private /tmp for the service
      # Should almost always be enabled
      PrivateTmp = true;

      # Creates a user/group namespace
      # Maps the root user and the service user into the namespace
      # If more are needed, see systemd.exec(5)
      # 
      # Should almost always be enabled.
      PrivateUsers = true;

      # Make /home empty and inaccessible
      # Redundant with the RootDirectory, but good to make explicit
      # 
      # Should almost always be enabled. Bind mount directories if required.
      #ProtectHome = true; this is very interessant

      # Create hostname namespace to protect the system hostname from being modified
      # Can be set to true, or a hostname can be specified with "yes:example.com"
      # 
      # Should almost always be enabled
      #ProtectHostname = true;

      # Disables requests for realtime scheduling
      # Protects against potential DOS attacks
      #
      # Should almost always be enabled.
      RestrictRealtime = true;

      # Disables the ability to create namespaces
      # 
      # Should almost always be enabled
      RestrictNamespaces = true;
      
      # Disables memory being able to be writable and executable.
      # The only time this should be disabled is with a JIT runtime like
      # .NET, the JVM, and others.
      # There are also some C programs that use trampolines that require this
      # disabled as well.
      #
      # Should usually be enabled.
      MemoryDenyWriteExecute = false;
    };

}
