{...}: {
  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    enableBashIntegration = true;
    settings = {
      "$schema" = "https://starship.rs/config-schema.json";

      # Tokyo Night Preset color palette
      palette = "tokyo_night";

      palettes = {
        tokyo_night = {
          # Tokyo Night color hexes
          background = "#1a1b26";
          foreground = "#c0caf5";
          black = "#15161e";
          red = "#f7768e";
          green = "#9ece6a";
          yellow = "#e0af68";
          blue = "#7aa2f7";
          magenta = "#bb9af7";
          cyan = "#7dcfff";
          white = "#a9b1d6";
          bright_black = "#414868";
          bright_red = "#f7768e";
          bright_green = "#9ece6a";
          bright_yellow = "#e0af68";
          bright_blue = "#7aa2f7";
          bright_magenta = "#bb9af7";
          bright_cyan = "#7dcfff";
          bright_white = "#ffffff";
        };
      };

      # Custom prompt formatting
      format = "$directory$git_branch$git_status$character";

      directory = {
        style = "blue bold";
        format = "[$path]($style) ";
      };

      git_branch = {
        style = "magenta bold";
        format = "on [$symbol$branch]($style) ";
        symbol = " ";
      };

      git_status = {
        style = "cyan bold";
        format = "[$all_status$ahead_behind]($style) ";
      };

      character = {
        success_symbol = "[❯](green bold)";
        error_symbol = "[❯](red bold)";
      };
    };
  };
}
