{ pkgs, ... }: {
   nixpkgs.config.allowUnfree = true;

   environment.systemPackages = with pkgs; [
    home-manager

    #wm
    wofi
    dunst
    wl-clipboard
    hyprlock
    hypridle
    hyprpaper
    waybar
    nemo

    #utils
    (pkgs.catppuccin-sddm.override {
      flavor = "macchiato";
      font  = "Noto Sans";
      fontSize = "9";
      #background = "${./wallpaper.png}";
      loginBackground = true;
    })
    blueman
    pavucontrol
    unzip
    brightnessctl
    libnotify
    swappy
    slurp
    grim
    cargo
    gcc
    openssl
    fzf
    ripgrep
    neofetch
    btop
    git

    #work utils
    prisma-engines
    docker
    nodejs_20
    bun

    #programs
    flameshot
    google-chrome
    postman
    spotify
    telegram-desktop
    slack
    dbeaver-bin
    yazi
    kitty 
    neovim
    vim
    tmux
    lazygit
    lazydocker
    vscode
    obsidian
  ];

  fonts.packages = with pkgs; [
    font-awesome
    nerdfonts
    dejavu_fonts
    noto-fonts-emoji
  ];
}
