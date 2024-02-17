{
  config,
  lib,
  inputs,
  ...
}: {
  # Enable OMZ
  programs.zsh = {
    enable = true;
    dotDir = ".config/zsh";
    enableCompletion = true;
    enableAutosuggestions = true;
    syntaxHighlighting.enable = true;

    history.path = "${config.home.homeDirectory}/private/zsh/zsh_history";

    oh-my-zsh = {
      enable = true;
      plugins = [
        "z"
        "git"
        "sudo"
        "docker"
        "kubectl"
      ];
    };

    shellAliases = {
      sl = "eza";
      ls = "eza";
      l = "eza -l --icons";
      la = "eza -la --icons";
      ip = "ip --color=auto";
      v = "\${EDITOR:-nvim}";
      rebuild = "nix run nixpkgs#home-manager -- switch --flake $NIXOS_CONFIG_DIR; notify-send 'Rebuild complete\!'";
      gameoff = "killall -9 .Discord-wrapped steam dota2";
      t = "task";
    };

    # Source additional shell aliases
    # It contains a loop for aliasing k8s commands, thats why it needs to be sourced
    initExtra = ''
      source $HOME/.bash_aliases
    '';
  };

  home.file.".bash_aliases".source = ./bash_aliases;

  # zsh prompt
  programs.starship = {
    enable = true;
  };

  # Set neovim as editor
  programs.neovim.defaultEditor = true;
}
