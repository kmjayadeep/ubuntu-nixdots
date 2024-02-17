{ config, pkgs, ... }:

{
  home.username = "jayadeep";
  home.homeDirectory = "/home/jayadeep";
  home.stateVersion = "24.05";
  programs.home-manager.enable = true;
  
  targets.genericLinux.enable = true;

  imports = [
    ./apps/i3
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
