-- Set colorscheme
vim.cmd("colorscheme onedark")

-- Set guifont
-- beacause of devincons -> Nerd fonts
vim.o.guifont = "DroidSansMono Nerd Font 13"

-- Show line numbers
vim.o.number = true

-- Enable cursor Line
-- highlight numbers only
vim.opt.cursorline = true
vim.opt.cursorlineopt = 'number'

-- Set line numbers colors
-- vim.cmd("highlight LineNr term=NONE cterm=NONE ctermfg=white ctermbg=NONE gui=NONE guifg=#008080 guibg=NONE")
vim.api.nvim_set_hl(0, "LineNr", {fg="#008080"})

-- Set current line nuber color
vim.cmd([[
    autocmd ColorScheme * highlight CursorLineNr cterm=bold term=bold gui=bold ctermbg=15 ctermfg=8 guifg=#ffff00
]])

-- Highlight column 81
-- very dark red
vim.opt.colorcolumn = "81"
vim.api.nvim_set_hl(0, "ColorColumn", {bg="#440000"})

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

-- VimWIKI settings
-- use normal markdown
vim.g.vimwiki_list = {{
    path = '/Users/jirikveton/Documents/vimwiki',
    syntax = 'markdown', 
    ext = ".md"
}}

--NvimTree settings
require("nvim-tree").setup()
vim.api.nvim_set_keymap('n', '<C-g>', ':NvimTreeToggle<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap('i', '<C-g>', '<Esc>:NvimTreeToggle<CR>', {noremap=true, silent=true})
