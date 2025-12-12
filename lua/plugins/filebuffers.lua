return {
    {
        'akinsho/bufferline.nvim',
        version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons',

        config = function ()
            require("bufferline").setup{
                options = {
                    always_show_bufferline = false,
                    auto_toggle_bufferline = true,
                    separator_style = "thin",

                    offsets = {
                        {
                            filetype = "NvimTree",
                            text = "File Explorer",
                            text_align = "center",
                            separator = true
                        }
                    },

                },
            }
        end
    }

}

