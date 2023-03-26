-- Colorscheme 
vim.api.nvim_command("colorscheme kanagawa")
vim.api.nvim_set_hl(0, "InactiveWindow", {bg="#1f1f28"})
vim.api.nvim_set_hl(0, "ActiveWindow", {bg="#16161d"})
vim.cmd([[set winhighlight=Normal:ActiveWindow,NormalNC:InactiveWindow]])
