local telescope = require("telescope")
local actions = require("telescope.actions")
local builtin = require("telescope.builtin")

telescope.setup {
    defaults = {
        mappings = {
            i = {
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
            }
        }
    },
    extensions = {
        file_browser = {
            -- disables netrw and use telescope-file-browser in its place
            hijack_netrw = true,
            mappings = {
                ["i"] = {
                -- your custom insert mode mappings
                },
                ["n"] = {
                -- your custom normal mode mappings
                },
            },
        } 
    },
}

telescope.load_extension "file_browser"

vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
-- vim.keymap.set("n", "<leader>fb", builtin.buffers, {})

vim.api.nvim_set_keymap(
    "n",
    "<leader>fb",
    ":Telescope file_browser<cr>",
    {noremap = true}
)
