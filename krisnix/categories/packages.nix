{ pkgs, ... } : 

{
  environment.systemPackages = with pkgs; [
     # cli
     neovim
     wget
     git
     git-credential-manager
     gcc
     xorg.xhost
     
     # gui 
     kitty
     syncthing
     gnome-calculator
     gnome-system-monitor
     nautilus
     nautilus-open-any-terminal
     papers
     loupe
     adw-gtk3
     vscodium
     bleachbit
     libreoffice-fresh
     firefox
  ];
  
  fonts.packages = with pkgs; [ nerd-fonts.jetbrains-mono ];
}
