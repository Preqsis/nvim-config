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
    -- Packer
    use "wbthomason/packer.nvim"
    
    -- Colorscheme
    use({
        "catppuccin/nvim",
        as = "catppuccin"
    })
    
    -- Start page
    use {'goolord/alpha-nvim',
        config = function ()
            require'alpha'.setup(require'alpha.themes.startify'.config)
        end
    }
    
    -- lualine
    use {'nvim-lualine/lualine.nvim',
        requires = 'kyazdani42/nvim-web-devicons'
    }
    
    -- lua bufferline
    use {'akinsho/bufferline.nvim',
        after = "catppuccin",
        requires = {'kyazdani42/nvim-web-devicons', opt = true},
        config = function()
            require("bufferline").setup {
                highlights = require("catppuccin.groups.integrations.bufferline").get(),
                options = {
                    buffer_close_icon = "",
                    close_icon = "",
                },
            } 
        end
    }
    
    -- Nvimtree file explorer
    use {'kyazdani42/nvim-tree.lua', 
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
    
    -- LSP 
    use {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'neovim/nvim-lspconfig',
    }
    use 'jose-elias-alvarez/null-ls.nvim'
    
    -- Snippets
    use {
        'L3MON4D3/LuaSnip',
        'dcampos/nvim-snippy',
        'honza/vim-snippets',
        'dcampos/cmp-snippy'
    }
    
    -- Syntax
    use {'nvim-treesitter/nvim-treesitter',
        run = vim.cmd.TSUpdate,
        requires = {
            "p00f/nvim-ts-rainbow", -- rainbow brackets
            -- 'jiangmiao/auto-pairs', -- auto-pair brackets
        }
    }
    use {'kylechui/nvim-surround', 
        config = function()
            require("nvim-surround").setup{}
        end
    }
    use { 'lukas-reineke/indent-blankline.nvim', 
        config = function()
            require("indent_blankline").setup {
                show_current_context = true,
            }
        end
    } 
    use {'windwp/nvim-autopairs'}
    
    -- Autocompletion
    use {'hrsh7th/nvim-cmp',
        requires = {
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-nvim-lua',
            'hrsh7th/cmp-cmdline',
        }
    }
    
    -- Telescope
    use {'nvim-telescope/telescope.nvim', 
        tag = "0.1.1", 
        requires = {"nvim-lua/plenary.nvim"}
    }
    
    -- Git
    -- TODO: cleanup and optimize git related plugins
    use {
        'tpope/vim-fugitive', -- Git wrapper accessible through :Git ... 
        'tpope/vim-rhubarb', -- Enables GBrowse
        'junegunn/gv.vim', -- Commit browser
        'sindrets/diffview.nvim', -- Git diff view
    }  
    use {'lewis6991/gitsigns.nvim', -- Git hunks
        config = function() 
            require("gitsigns").setup{}
        end
    }

    -- TODO/NOTE/... comments
    use {'folke/todo-comments.nvim',
        requires = {"nvim-lua/plenary.nvim"}
    }
    
    -- Nerd commenter
    use 'preservim/nerdcommenter'
    
    -- Renamer (VS-like renaming UI)
    use {'filipdutescu/renamer.nvim', branch = 'master'}

    -- Undo-tree
    use "mbbill/undotree"

    -- Tmux integration
    use 'christoomey/vim-tmux-navigator'

    if packer_bootstrap then
        require('packer').sync()
    end
end)
