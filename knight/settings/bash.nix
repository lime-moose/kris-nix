{
 programs.bash.shellAliases = {
   ls = "ls --color --sort extension";
   nc = "sudo nvim /etc/nixos/";
   nrs = "sudo nixos-rebuild switch";
   ncg = "sudo nix-collect-garbage -d";
 };
 programs.bash.initExtra = ''
 export PS1='\[\e[38;5;46;1m\]\w\n\[\e[0;2m\]\$\[\e[0m\] '
 '';
}
