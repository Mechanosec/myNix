{config, pkgs,...}: {
  home = {
    username = "mechanosec";
    homeDirectory = "/home/mechanosec/";
    stateVersion = "24.11";

    packages = with pkgs; [
      vscode
      obsidian
      neofetch
      git
      google-chrome
      neovim
      nodejs_20
    ];

  };


  home.pointerCursor = {
    gtk.enable = true;
  #   # x11.enable = true;
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Classic";
    size = 24;
  };

  qt = {
      enable = true;
      platformTheme.name = "gtk";
  };

  gtk = {
    enable = true;

    theme = {
        name = "catppuccin-macchiato-mauve-compact";
        package = pkgs.catppuccin-gtk.override {
          accents = ["mauve"];
          variant = "macchiato";
          size = "compact";
        };
    };
    # theme = {
    #   package = pkgs.adw-gtk3;
    #   name = "adw-gtk3-dark";
    # };

    iconTheme = {
      package = pkgs.adwaita-icon-theme;
      name = "Adwaita";
    };

    font = {
      name = "Sans";
      size = 11;
    };

    gtk3.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };
    gtk4.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };
  };


  nixpkgs.config.allowUnfree = true;

  programs.git = {
    enable = true;
    userName = "O.Krasovskyi";
    userEmail = "mechanosec29@gmail.com";
  };
}
