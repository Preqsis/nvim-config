require("mason").setup()

local lsp_servers = { "ruff-lsp", "pyright" }

require("mason-lspconfig").setup({
    ensure_instaled = lsp_servers,
    automatic_installation = true
})
