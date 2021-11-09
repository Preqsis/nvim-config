-- Set colorscheme
vim.cmd("colorscheme onedark")

-- Set guifont
-- beacause of devincons -> Nerd fonts
vim.o.guifont = "DroidSansMono Nerd Font 11"

-- Show line numbers
vim.o.number = true

-- Set line numbers colors
vim.cmd("highlight LineNr term=bold cterm=NONE ctermfg=white ctermbg=NONE gui=NONE guifg=white guibg=NONE")

-- Force darker background color
vim.api.nvim_command([[
    augroup ChangeBackgroudColour
        autocmd colorscheme * :hi normal guibg=#0a0a0a
    augroup END
]])
vim.o.termguicolors = true
vim.cmd [[silent! colorscheme snow]]

-- Real programmers don't use TABs but spaces
vim.o.tabstop       = 4
vim.o.softtabstop   = 4
vim.o.shiftwidth    = 4
vim.o.shiftround    = true
vim.o.expandtab     = true

-- Enable cursor move by mouse
vim.o.mouse = "a"

-- Jump line with left or right move
vim.o.whichwrap = vim.o.whichwrap .. "<,>,h,l,[,]"

-- Disable backup and swap files
vim.o.backup        = false
vim.o.writebackup   = false
vim.o.swapfile      = false

-- Cycle buffers by ctrl+n ro cltr+p
vim.api.nvim_set_keymap('n', '<C-n>', ':bnext<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', '<C-p>', ':bprevious<CR>', {noremap=true, silent=true})

-- Quick save by ctrl+s
vim.api.nvim_set_keymap('n', '<C-S>', ':update<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap('v', '<C-S>', '<C-C>:update<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap('i', '<C-S>', '<C-O>:update<CR>', {noremap=true, silent=true})

-- Quick window navigaion by ctrl+w
vim.api.nvim_set_keymap('n', '<C-w>', '<C-w>w', {noremap=true, silent=true})

-- Enable code folding
vim.o.foldmethod = 'indent'

-- Open with first level automaticaly folded
vim.o.foldlevelstart = 0

-- Fold / Unfold by <Space>
vim.api.nvim_set_keymap('n', '<Space>', 'zA', {noremap=true, silent=true})

-- Show Startify if no buffers are open
vim.cmd("autocmd BufDelete * if empty(filter(tabpagebuflist(), '!buflisted(v:val)')) | Startify | endif")
