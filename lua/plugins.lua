local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

require("packer").startup(function()
    use "wbthomason/packer.nvim"
    
    -- shared dependencies
    local dev_icons = 'kyazdani42/nvim-web-devicons'

    -- Colorscheme
    use 'rebelot/kanagawa.nvim'
    
    -- lualine
    -- bottom status / info bar
    use {'nvim-lualine/lualine.nvim',
        requires = dev_icons
    }

    -- lua bufferline
    use {'akinsho/bufferline.nvim', 
        tag = "v3.*",
        requires = {dev_icons, opt = true}
    }
    
    -- Nvimtree file explorer
    use {'kyazdani42/nvim-tree.lua', 
        requires = {dev_icons, opt = true}
    }

    -- LSP 
    use {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'neovim/nvim-lspconfig',
    }
    use 'jose-elias-alvarez/null-ls.nvim'

    -- Autocompletion
    use {
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-nvim-lua',
    }

    -- Snippets
    use {
        'L3MON4D3/LuaSnip',
        'dcampos/nvim-snippy',
        'honza/vim-snippets',
        'dcampos/cmp-snippy'
    }

    -- Syntax
    use {
        {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"},
        'jiangmiao/auto-pairs', -- auto-pair brackets
        "p00f/nvim-ts-rainbow", -- rainbow brackets
        'lukas-reineke/indent-blankline.nvim', -- indentation highlighting,
        'kylechui/nvim-surround' -- surround
    }

    -- Telescope
    use {'nvim-telescope/telescope.nvim', 
        tag = "0.1.1", 
        requires = {"nvim-lua/plenary.nvim"}
    }

    -- Git
    use {
        'lewis6991/gitsigns.nvim', -- Git hunks
        'tpope/vim-fugitive', -- Git wrapper accessible through :Git ... 
        'tpope/vim-rhubarb', -- Enables GBrowse
        'junegunn/gv.vim', -- Commit browser
        'sindrets/diffview.nvim' -- Git diff view
    }  

    -- Start page
    use 'goolord/alpha-nvim' 
    
    -- Renamer (VS-like renaming UI)
    use {'filipdutescu/renamer.nvim', branch = 'master'}
    
    -- Rooter
    use 'notjedi/nvim-rooter.lua'
    
    -- Nerd commenter
    use 'preservim/nerdcommenter'
    
    -- Tagbar
    use 'preservim/tagbar'
    
    if packer_bootstrap then
        require('packer').sync()
    end
end)
