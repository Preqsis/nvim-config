return {
    'kyazdani42/nvim-tree.lua',
    dependencies = {'kyazdani42/nvim-web-devicons'},
    config = function()
        require("nvim-tree").setup({
            update_cwd = true,
            update_focused_file = {
                enable = true,
                update_cwd = false
            },
            view = {
                adaptive_size = true
            }
        })

        vim.keymap.set('n', '<leader>g', ':NvimTreeToggle<CR>', {})
    end
}
