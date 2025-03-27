{ pkgs, stateVersion, hostname, ...}: {
  imports = [
    ./hardware-configuration.nix
    ./packages.nix
    ../../nixos/modules
  ];

  environment.systemPackages = [ pkgs.home-manager ];

  networking.hostName = "kubemaster"; # Define your hostname.

  time.timeZone = "America/Denver";

  i18n.defaultLocale = "en_US.UTF-8"; # Select internationalisation properties.

  nix.settings.experimental-features = [ "nix-command" "flakes" ]; # Enabling flakes

  system.stateVersion = "24.11"; # Did you read the comment?
}