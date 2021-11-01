call plug#begin('~/.nvim/plugged')
    " Better syntax support
    " Plug 'sheerun/vim-polyglot'
    
    " Native neovim LSP
    Plug 'neovim/nvim-lspconfig'

    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'

    " For vsnip users.
    Plug 'hrsh7th/cmp-vsnip'
    Plug 'hrsh7th/vim-vsnip'

    " Better syntax support
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'p00f/nvim-ts-rainbow' 

    " Status / Info bar and its themes
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Nerdtree file explorer
    Plug 'preservim/nerdtree'
    "Plug 'Xuyuanp/nedtree-git-plugin'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

    " Themes
    Plug 'joshdick/onedark.vim'
    " Plug 'morhetz/gruvbox', {'as': 'gruvbox'}

    " Startup quick file access
    Plug 'mhinz/vim-startify'

    " Auto pair for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    " Devicons
    " ... needs specific fornts (Nerd fornts)
    Plug 'ryanoasis/vim-devicons'
call plug#end()

" Aotomatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif


