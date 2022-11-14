-- Cycle buffers by ctrl+n or cltr+p
vim.api.nvim_set_keymap('n', '<C-n>', ':bnext<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', '<C-p>', ':bprevious<CR>', {noremap=true, silent=true})

-- Quick save by ctrl+s
vim.api.nvim_set_keymap('n', '<C-S>', ':update<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap('v', '<C-S>', '<C-C>:update<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap('i', '<C-S>', '<C-O>:update<CR>', {noremap=true, silent=true})

-- Quick window navigaion by ctrl+w
vim.api.nvim_set_keymap('n', '<C-w>', '<C-w>w', {noremap=true, silent=true})

-- Fold / Unfold by <Space>
vim.api.nvim_set_keymap('n', '<Space>', 'zA', {noremap=true, silent=true})

-- NvimTree
vim.api.nvim_set_keymap('n', '<C-g>', ':NvimTreeToggle<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', '<F8>', ':NvimTreeToggle<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap('i', '<C-g>', '<Esc>:NvimTreeToggle<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap('i', '<F8>', '<Esc>:NvimTreeToggle<CR>', {noremap=true, silent=true})

-- TagBar
vim.api.nvim_set_keymap('n', '<F9>', ':TagbarToggle<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', '<C-h>', ':TagbarToggle<CR>', {noremap=true, silent=true})

-- Motions
vim.api.nvim_set_keymap('n', '<Up>', 'gk', {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', '<Down>', 'gj', {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', '<Home>', 'g<Home>', {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', '<End>', 'g<End>', {noremap=true, silent=true})
vim.api.nvim_set_keymap('i', '<Up>', '<C-o>gk', {noremap=true, silent=true})
vim.api.nvim_set_keymap('i', '<Down>', '<C-o>gj', {noremap=true, silent=true})
vim.api.nvim_set_keymap('i', '<Home>', '<C-o>g<Home>', {noremap=true, silent=true})
vim.api.nvim_set_keymap('i', '<End>', '<C-o>g<End>', {noremap=true, silent=true})

-- Czech chars are numbers for easier motions
-- in normal mode
vim.api.nvim_set_keymap('n', '+', '1', {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', 'ě', '2', {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', 'š', '3', {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', 'č', '4', {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', 'ř', '5', {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', 'ž', '6', {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', 'ý', '7', {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', 'á', '8', {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', 'í', '9', {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', 'é', '0', {noremap=true, silent=true})
-- in visual mode
vim.api.nvim_set_keymap('v', '+', '1', {noremap=true, silent=true})
vim.api.nvim_set_keymap('v', 'ě', '2', {noremap=true, silent=true})
vim.api.nvim_set_keymap('v', 'š', '3', {noremap=true, silent=true})
vim.api.nvim_set_keymap('v', 'č', '4', {noremap=true, silent=true})
vim.api.nvim_set_keymap('v', 'ř', '5', {noremap=true, silent=true})
vim.api.nvim_set_keymap('v', 'ž', '6', {noremap=true, silent=true})
vim.api.nvim_set_keymap('v', 'ý', '7', {noremap=true, silent=true})
vim.api.nvim_set_keymap('v', 'á', '8', {noremap=true, silent=true})
vim.api.nvim_set_keymap('v', 'í', '9', {noremap=true, silent=true})
vim.api.nvim_set_keymap('v', 'é', '0', {noremap=true, silent=true})

-- Telescope
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>Telescope buffers<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>Telescope help_tags<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', '<leader>fo', '<cmd>Telescope oldfiles<CR>', {noremap=true, silent=true})
