local opts = {noremap=true, silent=true}
local keymap = vim.api.nvim_set_keymap

-- Cycle buffers by ctrl+n or cltr+p
keymap('n', '<C-n>', ':bnext<CR>', opts)
keymap('n', '<C-p>', ':bprevious<CR>', opts)

-- Quick save by ctrl+s
keymap('n', '<C-S>', ':update<CR>', opts)
keymap('v', '<C-S>', '<C-C>:update<CR>', opts)
keymap('i', '<C-S>', '<C-O>:update<CR>', opts)

-- Quick window navigaion by ctrl+w
keymap('n', '<C-w>', '<C-w>w', opts)
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-l>', '<C-w>l', opts)

-- Quick splits
keymap('n', '<leader>sv', ":vsplit<CR>", opts)
keymap('n', '<leader>sh', ":split<CR>", opts)

-- Custom vertical movements
-- half page down / up + center page
keymap('n', '<C-d>', '<C-d>zz', opts)
keymap('n', '<C-u>', '<C-u>zz', opts)

-- Fold / Unfold by <Space>
keymap('n', '<Space>', 'zA', opts)

-- NvimTree
keymap('n', '<C-g>', ':NvimTreeToggle<CR>', opts)
keymap('n', '<F8>', ':NvimTreeToggle<CR>', opts)
keymap('i', '<C-g>', '<Esc>:NvimTreeToggle<CR>', opts)
keymap('i', '<F8>', '<Esc>:NvimTreeToggle<CR>', opts)

-- TagBar
keymap('n', '<F9>', ':TagbarToggle<CR>', opts)
keymap('i', '<F9>', ':TagbarToggle<CR>', opts)

-- Motions
keymap('n', '<Up>', 'gk', opts)
keymap('n', '<Down>', 'gj', opts)
keymap('n', '<Home>', 'g<Home>', opts)
keymap('n', '<End>', 'g<End>', opts)
keymap('i', '<Up>', '<C-o>gk', opts)
keymap('i', '<Down>', '<C-o>gj', opts)
keymap('i', '<Home>', '<C-o>g<Home>', opts)
keymap('i', '<End>', '<C-o>g<End>', opts)

-- Czech chars are numbers for easier motions
-- in normal mode
keymap('n', '+', '1', opts)
keymap('n', 'ě', '2', opts)
keymap('n', 'š', '3', opts)
keymap('n', 'č', '4', opts)
keymap('n', 'ř', '5', opts)
keymap('n', 'ž', '6', opts)
keymap('n', 'ý', '7', opts)
keymap('n', 'á', '8', opts)
keymap('n', 'í', '9', opts)
keymap('n', 'é', '0', opts)
-- in visual mode
keymap('v', '+', '1', opts)
keymap('v', 'ě', '2', opts)
keymap('v', 'š', '3', opts)
keymap('v', 'č', '4', opts)
keymap('v', 'ř', '5', opts)
keymap('v', 'ž', '6', opts)
keymap('v', 'ý', '7', opts)
keymap('v', 'á', '8', opts)
keymap('v', 'í', '9', opts)
keymap('v', 'é', '0', opts)

-- Telescope
keymap('n', '<leader>ff', '<cmd>Telescope find_files<CR>', opts)
keymap('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', opts)
keymap('n', '<leader>fb', '<cmd>Telescope buffers<CR>', opts)
keymap('n', '<leader>fh', '<cmd>Telescope help_tags<CR>', opts)
keymap('n', '<leader>fo', '<cmd>Telescope oldfiles<CR>', opts)

-- Renamer
keymap('i', '<F2>', '<cmd>lua require("renamer").rename()<cr>', opts)
keymap('n', '<leader>rn', '<cmd>lua require("renamer").rename()<cr>', opts)
keymap('v', '<leader>rn', '<cmd>lua require("renamer").rename()<cr>', opts)
