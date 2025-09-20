{ pkgs, ... } : 

{
  services.displayManager.gdm.enable = true;
  services.desktopManager.gnome.enable = true;
  services.desktopManager.gnome.extraGSettingsOverrides = ''
  [org.gnome.mutter]
  experimental-features=['scale-monitor-framebuffer', 'xwayland-native-scaling']
  '';
  services.gnome.core-apps.enable = false;
  services.gnome.core-developer-tools.enable = false;
  services.gnome.games.enable = false;
  environment.gnome.excludePackages = with pkgs; [
    gnome-tour
    gnome-user-docs
    gnome-shell-extensions
    gnome-backgrounds
    gnome-user-share
  ];
}
