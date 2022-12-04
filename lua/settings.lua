-- Set guifont
-- beacause of devincons -> Nerd fonts
vim.o.guifont = "DroidSansMono Nerd Font 13"

-- Use system clipboard
vim.api.nvim_command([[set clipboard=unnamedplus]])

-- Show line numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- Enable cursor Line
-- highlight numbers only
vim.opt.cursorline = true
vim.opt.cursorlineopt = 'number'

-- Set line numbers colors
vim.api.nvim_set_hl(0, "LineNr", {fg="#008080"})
vim.api.nvim_set_hl(0, "CursorLineNr", {fg="#ffff00"})

-- Highlight column 81
-- very dark red
vim.opt.colorcolumn = "81"
vim.api.nvim_set_hl(0, "ColorColumn", {bg="#220404"})

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

-- Enable code folding
vim.o.foldmethod = 'indent'

-- Open with first level automaticaly folded
vim.o.foldlevelstart = 0

-- VimWIKI settings
-- use normal markdown
vim.g.vimwiki_list = {{
    path = '/Users/jirikveton/Documents/vimwiki',
    syntax = 'markdown', 
    ext = ".md"
}}

-- Activate 'rainbow brackets'
vim.g.rainbow_active = 1

-- Tagbar settings
vim.g.Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8_1/bin/ctags'

-- Signify settings
vim.g.signify_sign_show_count = 0
vim.g.signify_sign_show_text = 1

-- Line wrapping
vim.cmd("setlocal wrap linebreak nolist")
vim.cmd("set virtualedit=")
vim.cmd("setlocal display+=lastline")
