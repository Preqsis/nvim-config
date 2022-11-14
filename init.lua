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

    -- Easy LSP settings
    Plug 'VonHeikemen/lsp-zero.nvim'

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
    -- Plug 'romgrk/barbar.nvim'
    Plug('akinsho/bufferline.nvim', {
        tag = "v3.*",
        requires = 'kyazdani42/nvim-web-devicons'
    })

    -- Nvimtree file explorer
    Plug 'kyazdani42/nvim-tree.lua'

    -- Themes
    -- Plug 'navarasu/onedark.nvim'
    -- Plug('folke/tokyonight.nvim')
    -- Plug 'EdenEast/nightfox.nvim'
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

    -- Neogen docstring generator
    Plug('danymat/neogen')
vim.call('plug#end')

-- Automaticaly install plugins
vim.cmd([[
autocmd VimEnter *
\  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
\|   PlugInstall --sync | q
\| endif
]])

-- Colorscheme 
vim.api.nvim_command("colorscheme kanagawa")
-- vim.api.nvim_set_hl(0, "ActiveWindow", {bg="#000000"})
-- vim.api.nvim_set_hl(0, "InactiveWindow", {bg="#1f1f28"})
-- vim.cmd([[set winhighlight=Normal:ActiveWindow,NormalNC:InactiveWindow]])

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
