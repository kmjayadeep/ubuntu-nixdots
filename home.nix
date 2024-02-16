{ config, pkgs, ... }:

{
  home.username = "jayadeep";
  home.homeDirectory = "/home/jayadeep";
  home.stateVersion = "24.05";
  home.packages = with pkgs; [
    git
  ];
  programs.home-manager.enable = true;
}
