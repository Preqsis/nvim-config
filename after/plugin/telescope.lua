local telescope_status, telescope = pcall(require, "telescope")
if not telescope_status then
    print("Failed to require 'telescope'")
    return
end

local telescope_actions_status, telescope_actions = pcall(require, "telescope.actions")
if not telescope_actions_status then
    print("Failse to require 'telescope.actionss'")
    return
end

telescope.setup({
    defaults = {
        mappings = {
            i = {
                ["<C-j>"] = telescope_actions.move_selection_next,
                ["<C-k>"] = telescope_actions.move_selection_previous,
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
})

telescope.load_extension "file_browser"
telescope.load_extension "bookmarks"

local telescope_builtin_status, telescope_builtin = pcall(require, "telescope.builtin")
if not telescope_builtin_status then
    print("Failed to require 'telescope.builtin")
    return
end

vim.keymap.set("n", "<leader>ff", telescope_builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", telescope_builtin.live_grep, {})
vim.api.nvim_set_keymap(
    "n",
    "<leader>fb",
    ":Telescope file_browser<cr>",
    {noremap = true}
)














-- local telescope = require("telescope")
-- local actions = require("telescope.actions")
-- local builtin = require("telescope.builtin")
--
-- telescope.setup {
--     defaults = {
--         mappings = {
--             i = {
--                 ["<C-j>"] = actions.move_selection_next,
--                 ["<C-k>"] = actions.move_selection_previous,
--             }
--         }
--     },
--     extensions = {
--         file_browser = {
--             -- disables netrw and use telescope-file-browser in its place
--             hijack_netrw = true,
--             mappings = {
--                 ["i"] = {
--                 -- your custom insert mode mappings
--                 },
--                 ["n"] = {
--                 -- your custom normal mode mappings
--                 },
--             },
--         }
--     },
-- }
--
-- telescope.load_extension "file_browser"
-- telescope.load_extension "bookmarks"
--
--
--
-- vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
-- vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
-- -- vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
--
