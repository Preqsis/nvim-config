require("catppuccin").setup({
    flavour = "mocha",
    term_colors = false,
    dim_inactive = {
        enabled = true,
        shade = "dark",
        percentage = 0.15
    },
    styles = {
        functions = {"bold"},
        conditionals = {}
    },
    integrations = {
        nvimtree = true,
        gitsigns = true,
        cmp = true,
        indent_blankline = {
            enabled = true
        }
    }
})

vim.cmd.colorscheme "catppuccin"

-- Set line numbers colors
vim.api.nvim_set_hl(0, "LineNr", {fg="#008080"})
vim.api.nvim_set_hl(0, "CursorLineNr", {fg="#ffff00"})
vim.o.signcolumn = "yes"

-- Highlight column 81
-- very dark red
vim.opt.colorcolumn = "81"
vim.api.nvim_set_hl(0, "ColorColumn", {bg="#220404"})
