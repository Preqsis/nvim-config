require("nvim-tree").setup({
    update_cwd = true,
    update_focused_file = {
        enable = true,
        update_cwd = true
    },
    view = {
        adaptive_size = true
    }
})

vim.keymap.set('n', '<C-g>', ':NvimTreeToggle<CR>', {})
vim.keymap.set('n', '<F8>', ':NvimTreeToggle<CR>', {})
vim.keymap.set('i', '<C-g>', '<Esc>:NvimTreeToggle<CR>', {})
vim.keymap.set('i', '<F8>', '<Esc>:NvimTreeToggle<CR>', {})

