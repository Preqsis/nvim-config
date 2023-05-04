local opts = {noremap=true, silent=true}
local map = vim.api.nvim_set_keymap

-- Cycle buffers by ctrl+n or cltr+p
map('n', '<C-n>', ':bnext<CR>', opts)
map('n', '<C-p>', ':bprevious<CR>', opts)

-- Quick save by ctrl+s
map('n', '<C-S>', ':update<CR>', opts)
map('v', '<C-S>', '<C-C>:update<CR>', opts)
map('i', '<C-S>', '<C-O>:update<CR>', opts)

-- Quick window navigaion by ctrl+w
map('n', '<C-w>', '<C-w>w', opts)
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)
map('n', '<C-l>', '<C-w>l', opts)

-- Quick splits
map('n', '<leader>sv', ":vsplit<CR>", opts)
map('n', '<leader>sh', ":split<CR>", opts)

-- Custom vertical movements
-- half page down / up + center page
map('n', '<C-d>', '<C-d>zz', opts)
map('n', '<C-u>', '<C-u>zz', opts)

-- Fold / Unfold by <Space>
map('n', '<Space>', 'zA', opts)

-- Motions
map('n', '<Up>', 'gk', opts)
map('n', '<Down>', 'gj', opts)
map('n', '<Home>', 'g<Home>', opts)
map('n', '<End>', 'g<End>', opts)
map('i', '<Up>', '<C-o>gk', opts)
map('i', '<Down>', '<C-o>gj', opts)
map('i', '<Home>', '<C-o>g<Home>', opts)
map('i', '<End>', '<C-o>g<End>', opts)

-- Yeah, I am that kind of monster.
-- vim.keymap.set("n", "<Up>", "<Nop")
-- vim.keymap.set("n", "<Down>", "<Nop")
-- vim.keymap.set("n", "<Left>", "<Nop")
-- vim.keymap.set("n", "<Right>", "<Nop")

-- For easier string writing/editing
-- in insert mode search for next " and append after
map("i", "<C-a>", "<Esc>f\"a", opts)
map("n", "<C-a>", "f\"a", opts)

-- Czech chars are numbers for easier motions
-- in normal mode
map('n', '+', '1', opts)
map('n', 'ě', '2', opts)
map('n', 'š', '3', opts)
map('n', 'č', '4', opts)
map('n', 'ř', '5', opts)
map('n', 'ž', '6', opts)
map('n', 'ý', '7', opts)
map('n', 'á', '8', opts)
map('n', 'í', '9', opts)
map('n', 'é', '0', opts)
-- in visual mode
map('v', '+', '1', opts)
map('v', 'ě', '2', opts)
map('v', 'š', '3', opts)
map('v', 'č', '4', opts)
map('v', 'ř', '5', opts)
map('v', 'ž', '6', opts)
map('v', 'ý', '7', opts)
map('v', 'á', '8', opts)
map('v', 'í', '9', opts)
map('v', 'é', '0', opts)

-- Toddle all folds
-- vim.keymap.set("n", "<leader>zt", "<cmd>lua vim.o.foldlevel = math.abs(vim.o.foldlevel - 99)<CR>")

-- Experimental
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- incementaly move down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- incementaly move up
vim.keymap.set("x", "<leader>p", "\"_dP") -- paste and keep in clipboard
vim.keymap.set("n", "<leader>cd", ":cd %:p:h<CR>") -- cd to current buffer dir

