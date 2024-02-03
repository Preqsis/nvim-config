return {
    'folke/todo-comments.nvim',
    dependencies = {"nvim-lua/plenary.nvim"},
    opts = {},
    config = function()
        require('todo-comments').setup({
            keywords = {
                DEL = {
                    icon = "󰆳", color = "error", alt = {"DELETE"}
                }
            }
        })

        vim.keymap.set('n', '<leader>fm', '<cmd>TodoTelescope<cr>', {})
    end
}
