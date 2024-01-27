require'todo-comments'.setup({
    keywords = {
        DEL = {
            icon = "󰆳", color = "error", alt = {"DELETE"}
        }
    }
})

vim.keymap.set('n', '<leader>fm', '<cmd>TodoTelescope<cr>', {})
