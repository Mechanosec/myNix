{ pkgs, ...}: {
  nixpkgs.config.allowUnfree = true;
  home = {
    username = "mechanosec";
    homeDirectory = "/home/mechanosec/";
    stateVersion = "24.11";
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
    style.name = "gtk3";
    platformTheme.name = "gtk3";
  };

  gtk = {
    enable = true;

    theme = {
      package = pkgs.adw-gtk3;
      name = "adw-gtk3-dark";
    };

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
