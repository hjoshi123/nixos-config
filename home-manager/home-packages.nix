{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    wget
    curl
    kubectl
    kubernetes-helm
    kubernetes
    jq
    git
    vim
    zsh
    htop
    neofetch
    home-manager
    go
    gopls
    docker
    docker-compose

    neofetch
    file
    tree
    wget
    git
    fastfetch
    htop
    nix-index
    unzip
    scrot
    light
    lux
    mediainfo
    ranger
    zram-generator
    cava
    zip
    brightnessctl
    swww
    openssl
    lazygit
    bluez
  ];
}