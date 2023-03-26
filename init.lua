-- Remap the leader
vim.g.mapleader = ","

-- require "plugins"
--
-- require "colorsheme"

-- Load all configs
local configs = {
    "plugins",
    "colorsheme",
    "setups",
    "settings",
    "keymaps",
    "lsp-config",
    "nvim-cmp"
}
for i, req in  ipairs(configs) do
    -- require(req)
    local status, plugin = pcall(require, req)
    if not status then
        print("Something went wrong:", req)
    end
end
