vim.g.mapleader = ","

-- Load plugins
local Plug = vim.fn["plug#"]
vim.call('plug#begin', '~/.nvim/plugged')
    -- LSP support
    Plug 'neovim/nvim-lspconfig'
    Plug 'williamboman/mason.nvim'
    Plug 'williamboman/mason-lspconfig.nvim'

    -- Autocompletion
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'saadparwaiz1/cmp_luasnip'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-nvim-lua'

    -- Snippets
    Plug 'L3MON4D3/LuaSnip'
    Plug 'rafamadriz/friendly-snippets'
    Plug 'hrsh7th/cmp-vsnip'
    Plug 'hrsh7th/vim-vsnip'

    Plug 'VonHeikemen/lsp-zero.nvim'

    -- Better syntax support
    Plug('nvim-treesitter/nvim-treesitter', {
        ['do'] = function()
            vim.call(':TSUpdate')
        end
        })
    Plug 'p00f/nvim-ts-rainbow' 

    -- Status / Info bar and its themes
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    -- Nerdtree file explorer
    Plug 'preservim/nerdtree'
    --Plug 'Xuyuanp/nedtree-git-plugin'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

    -- Themes
    Plug 'joshdick/onedark.vim'

    -- Startup quick file access
    Plug 'mhinz/vim-startify'

    -- Auto pair for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    -- Devicons
    -- ... needs specific fornts (Nerd fornts)
    Plug 'ryanoasis/vim-devicons'

    -- Telescope
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'

    Plug 'moll/vim-bbye'
    Plug 'aymericbeaumet/vim-symlink'
vim.call('plug#end')

-- Automaticaly install plugins
vim.cmd([[
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
]])

vim.cmd([[
    source $HOME/.config/nvim/plug-config/airline.vim
    source $HOME/.config/nvim/plug-config/nerdtree.vim
    source $HOME/.config/nvim/plug-config/lsp-config.vim
]])

-- Cursor line highlight
-- vim.opt.cursorline = true

-- General settings
require 'settings'

-- Completion settins
require 'nvim-cmp'

-- treesitter settings
-- better syntax etc.
require 'treesitter'

require 'telescope'
