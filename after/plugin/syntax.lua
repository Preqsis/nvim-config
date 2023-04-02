-- Treesitter
require'nvim-treesitter.configs'.setup {
    ensure_installed = "all",
    sync_install = false, 
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
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
