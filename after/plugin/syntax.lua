-- Treesitter
require'nvim-treesitter.configs'.setup {
    ensure_installed = "all",
    highlight = {
        enable = true
    },
    rainbow = {
        enable = true
    }
}

require("indent_blankline").setup {
    show_current_context = true,
}

-- Surroud
require("nvim-surround").setup({})
