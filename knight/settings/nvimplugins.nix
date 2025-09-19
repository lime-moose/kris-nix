{ pkgs, ... } :

{
 programs.neovim.plugins = with pkgs.vimPlugins; [
  # gruvbox colorsceheme
   {
     type = "lua";
     plugin = gruvbox-material-nvim;
     config = ''require('gruvbox-material').setup({contrast = "hard"})'';
   }
 ];
}
