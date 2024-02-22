{
  config,
  lib,
  inputs,
  ...
}: {
  # bitwarden client
  programs.rbw = {
    enable = true;
    settings.email = "kmjayadeep@gmail.com";
  };
}
