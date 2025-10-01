{
 programs.bash.shellAliases = {
   ls = "ls --color --sort extension";
   nu = "cd /etc/nixos && sudo nix flake update";
   nc = "cd /etc/nixos && sudo nvim .";
   nrs = "sudo nixos-rebuild switch";
   ncg = "sudo nix-collect-garbage -d";
   cnc = "sudo cp -R /etc/nixos/* ~/Workstation/development/dotfiles/krisnix/";
   krisnix = "cd ~/Workstation/development/dotfiles/krisnix/";
 };
 programs.bash.initExtra = ''
 export PS1='\[\e[38;5;46;1m\]\w\n\[\e[0;2m\]\$\[\e[0m\] '
 '';
}
