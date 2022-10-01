-- LSP setup
local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.setup({
    servers = {
        pyright = {
            analysis = {
                autoImportCompletion = false
            }
        }
    }
})

-- Disable diagnostics entirely
vim.lsp.handlers["textDocument/publishDiagnostics"] = function() end

-- key mappings
local bufopts = { noremap=true, silent=true, buffer=bufnr }
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
vim.keymap.set('n', 'gr', vim.lsp.buf.implementation, bufopts)
vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
