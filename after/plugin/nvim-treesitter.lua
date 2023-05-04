require'nvim-treesitter.configs'.setup {
    ensure_installed = {
        "python", "lua", "bash", "yaml", "json"
    },
    -- ensure_installed = "all",
    sync_install = false, 
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
    },
    rainbow = {
        enable = true
    }
}
