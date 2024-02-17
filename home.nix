{ config, pkgs, ... }:

{
  home.username = "jayadeep";
  home.homeDirectory = "/home/jayadeep";
  home.stateVersion = "24.05";
  programs.home-manager.enable = true;

  imports = [
    ./apps/nvim
    ./apps/shell
    ./apps/taskwarrior

    ./apps/env.nix
    ./apps/git.nix
    ./apps/gpg.nix
    ./apps/packages.nix
    ./apps/theme.nix
  ];
}
