vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

vim.opt.undodir = os.getenv("HOME") .. "/.nvim/undo"
vim.opt.undofile = true
