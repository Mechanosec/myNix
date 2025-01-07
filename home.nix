{ pkgs, ...}: {
  nixpkgs.config.allowUnfree = true;
  home = {
    username = "mechanosec";
    homeDirectory = "/home/mechanosec/";
    stateVersion = "24.11";

    # packages = with pkgs; [
    # ];
  };

  home.pointerCursor = {
    gtk.enable = true;
  #   # x11.enable = true;
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Classic";
    size = 24;
  };

  # catppuccin = {
  #   enable = true;
  #   flavor = "macchiato";
  # };

  qt = {
    enable = true;
    style.name = "gtk3";
    platformTheme.name = "gtk3";
  };

  gtk = {
    enable = true;
    # gtk3 = {
    #   extraConfig.gtk-application-prefer-dark-theme = true;
    # };
    theme = {
      name = "Arc-Dark";
      package = pkgs.arc-theme;
    };
    # theme = {
    #   package = pkgs.adw-gtk3;
    #   # name = "adw-gtk3-dark";
    #   name = "adw-gtk3";
    # };

    iconTheme = {
      package = pkgs.adwaita-icon-theme;
      name = "Adwaita";
    };
  };


  programs.git = {
    enable = true;
    userName = "O.Krasovskyi";
    userEmail = "mechanosec29@gmail.com";
  };


}
