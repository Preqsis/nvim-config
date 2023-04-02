require('gitsigns').setup()

vim.cmd([[
    highlight SignColumn guibg=NONE
    highlight GitSignsAdd guibg=NONE guifg=#00ff00
    highlight GitSignsChange guibg=NONE guifg=#87cefa
    highlight GitSignsDelete guibg=NONE
    highlight DiagnosticSignError guibg=NONE
    highlight DiagnosticSignWarn guibg=NONE
    highlight DiagnosticSignHint guibg=NONE
    highlight DiagnosticSignInfo guibg=NONE
]])
