--[[
return {
  {
    "NvChad/nvterm",
    config = function () require("nvterm").setup({
  terminals = {
    shell = vim.o.shell,
    list = {},
    type_opts = {
      float = {
        relative = 'editor',
        row = 0.3,
        col = 0.25,
        width = 0.5,
        height = 0.5,
        border = "single",
      },
      horizontal = { location = "rightbelow", split_ratio = .3, },
      vertical = { location = "rightbelow", split_ratio = .5 },
    }
  },
  behavior = {
    autoclose_on_quit = {
      enabled = false,
      confirm = true,
    },
    close_on_exit = true,
    auto_insert = true,
  }
    })
    end,
  }
}
]]

return {
    {
	'akinsho/toggleterm.nvim',
	version = "*",
	opts = {
            open_mapping = "<A-i>",
            direction = "float",
            float_opts = {
                height = 25,
                width = 70,
                border = 'curved',
                title_pos = "center"
            }
        }
    }
}

