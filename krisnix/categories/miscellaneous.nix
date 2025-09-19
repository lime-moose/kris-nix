{
  services.flatpak.enable = true;
  programs.nano.enable = false;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
}
