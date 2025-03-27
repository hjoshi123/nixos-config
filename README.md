# Nix OS Config

This repository contains my personal Nix OS configuration files. It uses the concept of flakes to manage the configuration in a reproducible waay. The main goal is to provide a clean and reproducible setup for any environment.

## Usage

To use this configuration, you need to have Nix installed on your system. You can then clone this repository and use the `nixos-rebuild` command to apply the configuration.

```bash
# Move the cloned config to the /etc/nixos directory and then run the following command:
sudo nixos-rebuild switch --flake .#<hostname>
```

This should setup the nixos base packages which also includes `home-manager`.

To setup home-manager you can run the following command:

```bash
# Again from the /etc/nixos directory
home-manager switch --flake .#<username>
```

## Features

Currently, `home-manager` supports the following programs:

- Lazygit
- Zsh
- eza
- Starship

It, also installs the following packages on the system:

- kubectl
- kubernetes
- helm
- docker
- docker-compose
