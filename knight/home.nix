{ config, pkgs, ... } :

{
 imports = [
   ./settings/neovim.nix
   ./settings/nvimplugins.nix
   ./settings/bash.nix
   ./settings/git.nix
   ./settings/kitty.nix
   ./settings/syncthing.nix
   ./settings/firefox.nix
 ];

 home.username = "knight";
 home.homeDirectory = "/home/knight";
 home.stateVersion = "25.05";


 programs.bash.enable = true;
 programs.neovim.enable = true;
 programs.kitty.enable = true;
 services.syncthing.enable = true;
 programs.git.enable = true;
 programs.firefox.enable = true;
}
