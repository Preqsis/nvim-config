require("mason").setup()

local lsp_servers = { "pyright" }

require("mason-lspconfig").setup({
    ensure_instaled = lsp_servers,
    automatic_installation = true
})

local nvim_lsp = require("lspconfig")

local config = require("lspconfig/configs")
local util = require("lspconfig/util")
local path = util.path

local function get_python_path(workspace)
    return vim.fn.exepath("ython3") or vim.fn.exepath("ython") or "ython"
end

-- pyright
nvim_lsp.pyright.setup {
    on_init = function(client)
        -- local p = "/Users/jirikveton/.pyenv/versions/neovim_test/bin/python"
        -- vim.env.VIRTUAL_ENV = p
        -- client.config.settings.python.pythonPath = get_python_path(client.config.root_dir)
    end
}

local opts = { noremap=true, silent=true, buffer=bufnr }
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
vim.keymap.set('n', 'gr', vim.lsp.buf.implementation, opts)
vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, opts)
vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
vim.keymap.set('n', '<leader>ft', vim.lsp.buf.format, opts)
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
vim.keymap.set('n', '<leader>of', vim.diagnostic.open_float, opts)

local null_ls = require("null-ls")
local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
    debug = false,
    sources = {
        formatting.black.with({extra_args = {"--fast"}}),
        -- formatting.lua_format,
        -- formatting.isort,
        diagnostics.flake8.with({extra_args = {"--ignore=E501"}}),
        diagnostics.mypy
    }
})

-- vim.keymap.set('n', '<F2>', vim.lsp.buf.rename, opts)
-- vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
