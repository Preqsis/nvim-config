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
vim.api.nvim_set_hl(0, "ColorColumn", {bg="#330000"})

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

-- Cycle buffers by ctrl+n or cltr+p
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

-- Startify use lua nvim-web-devicons
function _G.webDevIcons(path)
  local filename = vim.fn.fnamemodify(path, ':t')
  local extension = vim.fn.fnamemodify(path, ':e')
  return require'nvim-web-devicons'.get_icon(filename, extension, { default = true })
end
vim.cmd([[
function! StartifyEntryFormat() abort
  return 'v:lua.webDevIcons(absolute_path) . " " . entry_path'
endfunction
]])

-- VimWIKI settings
-- use normal markdown
vim.g.vimwiki_list = {{
    path = '/Users/jirikveton/Documents/vimwiki',
    syntax = 'markdown', 
    ext = ".md"
}}

-- NvimTree settings
require("nvim-tree").setup()
vim.api.nvim_set_keymap('n', '<C-g>', ':NvimTreeToggle<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap('i', '<C-g>', '<Esc>:NvimTreeToggle<CR>', {noremap=true, silent=true})

-- Enable bufferline
require("bufferline").setup{}

-- Activate 'rainbow brackets'
vim.g.rainbow_active = 1

-- Lualine enable and setup
require('lualine').setup({
    options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        disabled_filetypes = {
        statusline = {},
        winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
        statusline = 1000,
        tabline = 1000,
        winbar = 1000,
        }
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {}
})

require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    show_current_context = true,
    -- show_current_context_start = true,
}

-- Tagbar settings
vim.g.Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8_1/bin/ctags'
vim.api.nvim_set_keymap('n', '<F9>', ':TagbarToggle<CR>', {noremap=true, silent=true})

-- Signify settings
vim.g.signify_sign_show_count = 0
vim.g.signify_sign_show_text = 1
