{
  ...
}:
{
  programs.fastfetch = {
    enable = true;
    settings = {
      logo = {
        source = "nixos_small";
      };
      modules = [
        "break"
        {
          type = "os";
          key = "OS   ";
        }
        {
          type = "kernel";
          key = "Kernel";
        }
        {
          type = "uptime";
          key = "Uptime";
        }
        {
          type = "shell";
          key = "Shell ";
        }
        {
          type = "wm";
          key = "WM   ";
        }
        {
          type = "terminal";
          key = "Term ";
        }
        {
          type = "packages";
          key = "Pkgs ";
        }
        {
          type = "memory";
          key = "Memory";
        }

        {
          type = "disk";
          key = "Disk  ";
        }

        "break"
        {
          type = "colors";
          symbol = "circle";
          block = 8;
          blockRange = [
            0
            7
          ];
        }
      ];
    };
  };
}
