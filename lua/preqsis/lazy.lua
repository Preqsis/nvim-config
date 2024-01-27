local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Remap the leader
vim.g.mapleader = ","
vim.g.maplocalleader = ","

require("lazy").setup({
    -- Colorscheme
    {"catppuccin/nvim", name = "catppuccin", pririty = 1000},
    
    -- Start page
    {'goolord/alpha-nvim', 
        dependencies = { 'kyazdani42/nvim-web-devicons' },
        config = function ()
            require'alpha'.setup(require'alpha.themes.startify'.config)
        end
    },

    -- lualine
    {"nvim-lualine/lualine.nvim", dependencies = "kyazdani42/nvim-web-devicons"},

    -- lua bufferline
    {'akinsho/bufferline.nvim',
        after = "catppuccin",
        dependencies = {'kyazdani42/nvim-web-devicons'},
        config = function()
            require("bufferline").setup {
                highlights = require("catppuccin.groups.integrations.bufferline").get(),
                options = {
                    buffer_close_icon = "",
                    close_icon = "",
                },
            }
        end
    },

    -- Telescope
    {"nvim-telescope/telescope.nvim",
        branch = "0.1.x", 
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope-file-browser.nvim"
        }
    },
    
    -- Nvimtree file explorer
    {'kyazdani42/nvim-tree.lua', dependencies = {'kyazdani42/nvim-web-devicons'}},

    -- LSP
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    {'neovim/nvim-lspconfig'},
    {"nvimdev/guard.nvim", dependencies = {"nvimdev/guard-collection"}},

    -- Snippets
    {'L3MON4D3/LuaSnip'},
    {'dcampos/nvim-snippy'},
    {'honza/vim-snippets'},
    {'dcampos/cmp-snippy'},

    -- Treesitter
    {'nvim-treesitter/nvim-treesitter',
        -- run = vim.cmd.TSUpdate,
        dependencies = {
            'nvim-treesitter/nvim-treesitter-textobjects',
            "p00f/nvim-ts-rainbow", -- rainbow brackets
        }
    },

    -- Surround
    {"kylechui/nvim-surround", version = "*", event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({})
        end
    },

    -- Indentation highlights
    { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {},
        config = function()
            require("ibl").setup {}
        end
    },

    -- Auto pairs
    {'windwp/nvim-autopairs', event = "InsertEnter", opts = {}},

    -- Autocompletion
    {'hrsh7th/nvim-cmp',
        --[[ event = "InsertEnter", ]]
        dependencies = {
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-nvim-lua',
            'hrsh7th/cmp-cmdline',
        }
    },

    -- Git
    {'tpope/vim-fugitive'},
    {'lewis6991/gitsigns.nvim',
        config = function()
            require("gitsigns").setup{}
        end
    },

    -- TODO/NOTE/... comments
    {'folke/todo-comments.nvim', dependencies = {"nvim-lua/plenary.nvim"}, opts = {}},

    -- Renamer
    {"smjonas/inc-rename.nvim",
        config = function()
            require("inc_rename").setup()
        end
    },

    -- Nerd commenter
    {'preservim/nerdcommenter'},

    -- Undo-tree
    {"mbbill/undotree"},

    -- Tmux integration
    {"aserowy/tmux.nvim",
        config = function()
            return require("tmux").setup()
        end
    },

    -- UFO (folding plugin)
    {"kevinhwang91/nvim-ufo", dependencies = {'kevinhwang91/promise-async'}},

    -- Chat GPT
    {
  "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    config = function()
      require("chatgpt").setup()
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    }
}

})
