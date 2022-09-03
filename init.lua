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
    --Plug 'p00f/nvim-ts-rainbow' 
    -- Rainbow brackets    
    Plug 'frazrepo/vim-rainbow'

    -- Status / Info bar and its themes
    Plug 'nvim-lualine/lualine.nvim'

    -- lua bufferline
    Plug 'akinsho/bufferline.nvim'

    -- Nvimtree file explorer
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'kyazdani42/nvim-tree.lua'

    -- Themes
    Plug 'joshdick/onedark.vim'
    Plug 'EdenEast/nightfox.nvim'

    -- Startup quick file access
    Plug 'mhinz/vim-startify'

    -- Auto pair for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    -- Telescope
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'

    Plug 'moll/vim-bbye'
    Plug 'aymericbeaumet/vim-symlink'
    Plug 'vimwiki/vimwiki'

    Plug 'lukas-reineke/indent-blankline.nvim' 
    
vim.call('plug#end')

-- Automaticaly install plugins
vim.cmd([[
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
]])

-- General settings
require 'settings'

-- Completion settins
require 'nvim-cmp'

-- LSP settings
require 'lsp-config'

-- treesitter settings
-- better syntax etc.
require 'treesitter'

-- telescope settings
require 'telescope'

