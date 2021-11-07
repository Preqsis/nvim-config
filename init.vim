" Load plugins
source $HOME/.config/nvim/plugins.vim

" General setting and other stuff
" source $HOME/.config/nvim/settings.vim
luafile $HOME/.config/nvim/settings.lua

" Plugin specific config files
source $HOME/.config/nvim/plug-config/airline.vim
source $HOME/.config/nvim/plug-config/nerdtree.vim
"source $HOME/.config/nvim/plug-config/rainbow.vim
source $HOME/.config/nvim/plug-config/lsp-config.vim

luafile $HOME/.config/nvim/lua/nvim-cmp.lua
luafile $HOME/.config/nvim/lua/treesitter.lua
