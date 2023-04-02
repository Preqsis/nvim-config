require("mason").setup()

local lsp_servers = { "pyright" }

require("mason-lspconfig").setup({
    ensure_instaled = lsp_servers,
    automatic_installation = true
})

for _, server in pairs(lsp_servers) do
    require('lspconfig')[server].setup {}
end

-- this is for diagnositcs signs on the line number column
-- use this to beautify the plain E W signs to more fun ones
-- !important nerdfonts needs to be setup for this to work in your terminal
-- local signs = { Error = "", Warn = "", Hint = "", Info = "" }
-- for type, icon in pairs(signs) do
    -- local hl = "DiagnosticSign" .. type
    -- vim.fn.sign_define(hl, { text = icon, texthl= hl, numhl = hl })
-- end

vim.api.nvim_set_hl(0, "DiagnosticError", {fg="Red"})
vim.api.nvim_set_hl(0, "DiagnosticWarn", {fg="Orange"})
vim.api.nvim_set_hl(0, "DiagnosticInfo", {fg="#7b68ee"})
vim.api.nvim_set_hl(0, "DiagnosticHint", {fg="#00bfff"})

-- key mappings
local bufopts = { noremap=true, silent=true, buffer=bufnr }
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
vim.keymap.set('n', 'gr', vim.lsp.buf.implementation, bufopts)
vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
vim.keymap.set('n', '<leader>ft', vim.lsp.buf.format, bufopts)
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, bufopts)

local null_ls = require("null-ls")
local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
    debug = false,
    sources = {
        formatting.black.with({extra_args = {"--fast"}}),
        -- formatting.isort,
        diagnostics.flake8.with({extra_args = {"--ignore=E501"}}),
        -- diagnostics.mypy
    }
})

-- vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
-- vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
-- vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
-- vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts) 
-- vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
-- vim.keymap.set('n', '<space>K', vim.lsp.buf.signature_help, bufopts)
-- vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, bufopts)
-- vim.keymap.set('n', '<F2>', vim.lsp.buf.rename, bufopts)
-- vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
-- vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
-- vim.keymap.set('n', '<space>f', vim.lsp.buf.formatting, bufopts)
-- vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
-- vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
-- vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
