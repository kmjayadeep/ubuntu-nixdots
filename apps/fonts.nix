{
  config,
  pkgs,
  inputs,
  ...
}: {
  fonts.fontconfig.enable = true;
  home.packages = with pkgs; [
    jetbrains-mono
    roboto
    openmoji-color
    (nerdfonts.override {fonts = ["JetBrainsMono"];})
  ];
}
