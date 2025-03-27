{ pkgs, ... }: {
  programs.zsh.enable = true;

  users = {
    defaultUserShell = pkgs.zsh;

    users.hemant = {
        isNormalUser = true;
        description = "Hemant";
        extraGroups = [ "networkmanager" "wheel" "input" ];
        packages = with pkgs; [];
    };
  };

  # Enable automatic login for the user.
  services.getty.autologinUser = "amper";
}