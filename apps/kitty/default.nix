{
  config,
  lib,
  pkgs,
  inputs,
  ...
}: {
  programs.kitty = {
    # install kitty manually. latest version doesnt work in ubuntu
    enable = false;
    extraConfig = ''
      ${builtins.readFile ./mocha.conf}
    '';
  };
}
