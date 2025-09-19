{
 imports = [ ./nvimplugins.nix ];

 programs.neovim.viAlias = true;
 programs.neovim.vimAlias = true;
 programs.neovim.extraLuaConfig = ''
 vim.opt.number = true
 vim.opt.expandtab = true
 vim.opt.shiftwidth = 4
 vim.opt.tabstop = 4
 vim.opt.softtabstop = 4
 vim.opt.smartindent = true
 '';
}
