{
  services.flatpak.enable = true;
  programs.nano.enable = false;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  virtualisation.containers.enable = true;
  virtualisation.podman.enable = true;
  virtualisation.podman.dockerCompat = true;
  virtualisation.podman.defaultNetwork.settings.dns_enable = true;
}
