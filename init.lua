-- Remap the leader
vim.g.mapleader = ","

-------------
-- PLUGINS --
-------------
-- Load plugins
local Plug = vim.fn["plug#"]
vim.call('plug#begin', '~/.nvim/plugged')
    -- LSP support
    Plug 'neovim/nvim-lspconfig'
    Plug 'williamboman/mason.nvim'
    Plug 'williamboman/mason-lspconfig.nvim'
    Plug 'jose-elias-alvarez/null-ls.nvim'
    
    -- Autocompletion
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-nvim-lua'

    -- Snippets
    Plug 'L3MON4D3/LuaSnip'
    -- Plug 'rafamadriz/friendly-snippets'
    -- Plug 'hrsh7th/cmp-vsnip'
    -- Plug 'hrsh7th/vim-vsnip'
    Plug 'dcampos/nvim-snippy'
    Plug 'honza/vim-snippets'
    Plug 'dcampos/cmp-snippy'


    -- Better syntax support
    Plug('nvim-treesitter/nvim-treesitter', {
        ['do'] = function()
            vim.call(':TSUpdate')
        end
    })
    Plug 'p00f/nvim-ts-rainbow' 
    
    -- Pretty dev icons
    Plug 'kyazdani42/nvim-web-devicons'

    -- Status / Info bar and its themes
    Plug 'nvim-lualine/lualine.nvim'

    -- lua bufferline
    Plug('akinsho/bufferline.nvim', {
        tag = "v3.*",
        requires = 'kyazdani42/nvim-web-devicons'
    })

    -- Nvimtree file explorer
    Plug 'kyazdani42/nvim-tree.lua'

    -- Themes
    Plug 'rebelot/kanagawa.nvim'

    -- Alpha start page
    Plug('goolord/alpha-nvim')

    -- Auto pair for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    -- Telescope
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'

    -- Rooter
    Plug 'notjedi/nvim-rooter.lua'
    
    -- vimwiki (note taking)
    Plug 'moll/vim-bbye'
    Plug 'aymericbeaumet/vim-symlink'
    Plug 'vimwiki/vimwiki'

    -- Indentation hightlighting
    Plug 'lukas-reineke/indent-blankline.nvim' 

    -- Tagbar
    Plug 'preservim/tagbar'

    -- Git related
    Plug 'lewis6991/gitsigns.nvim' -- Git hunks
    Plug 'tpope/vim-fugitive' -- Git wrapper accessible through :Git ... 
    Plug 'tpope/vim-rhubarb' -- Enables GBrowse
    Plug 'junegunn/gv.vim' -- Commit browser
    Plug 'sindrets/diffview.nvim' -- Git diff view

    -- Nerd commenter
    Plug 'preservim/nerdcommenter'

    -- Surround
    Plug('kylechui/nvim-surround')

    -- Renamer
    -- VS-like renaming UI
    Plug('filipdutescu/renamer.nvim', { 
        branch = 'master' 
    })
vim.call('plug#end')

-- Automaticaly install plugins
vim.cmd([[
autocmd VimEnter *
\  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
\|   PlugInstall --sync | q
\| endif
]])

local api = vim.api

-- Colorscheme 
api.nvim_command("colorscheme kanagawa")
api.nvim_set_hl(0, "InactiveWindow", {bg="#1f1f28"})
api.nvim_set_hl(0, "ActiveWindow", {bg="#16161d"})
vim.cmd([[set winhighlight=Normal:ActiveWindow,NormalNC:InactiveWindow]])

-- Setups
require 'setups'

-- General settings
require 'settings'

-- Keymaps
require 'keymaps'

-- LSP settings 
require 'lsp-config'

-- Completion settings
require 'nvim-cmp'
