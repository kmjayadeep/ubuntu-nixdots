{
  pkgs,
  inputs,
  ...
}: {
  home.packages = with pkgs; [
    eza # better ls
    bat # better cat
    tldr # better man
    fzf # used by kubectx, notes
    xclip # clipboard
    alejandra # format nix files
    protonmail-bridge # For protonmail
    unzip

    # GUI apps
    pcmanfm # file manager
    xarchiver # extract archives in pcmanfm
    pavucontrol # sound control

    # Other apps
    arandr # manage xrandr
    neofetch
    restic # for backup
    dig
    btop # Better htop

    # programming
    go
    docker-compose
    ripgrep
    jq
  ];
}
