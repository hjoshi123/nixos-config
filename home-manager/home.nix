{ homeStateVersion, user, ... }: {
  imports = [
    ./configs
    ./home-packages.nix
  ];

  home = {
    username = user;
    homeDirectory = "/home/${user}";
    stateVersion = homeStateVersion;
  };
}