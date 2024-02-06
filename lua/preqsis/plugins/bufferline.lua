return {'akinsho/bufferline.nvim',
    dependencies = {'kyazdani42/nvim-web-devicons'},
    config = function()
        require("bufferline").setup {
            highlights = require("catppuccin.groups.integrations.bufferline").get(),
            options = {
                buffer_close_icon = "󱎘",
                close_icon = "󱎘",
            },
        }
    end
}
