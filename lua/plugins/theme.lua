return {
{
    "folke/tokyonight.nvim",
    lazy = false,  -- Load the theme immediately
    priority = 1000,  -- Ensure it loads first
    config = function()
      require("tokyonight").setup({
        style = "moon",  -- Choose between "night", "storm", "day", or "moon"
        transparent = true,  -- Enable or disable transparency
        on_highlights = function(hl, colors)
            hl.CursorLine = { 
                bg = "#000000",
              }
              hl.PmenuSel = { 
                bg = colors.blue, -- Use a distinct color for the selection inside the menu
                fg = colors.fg, -- Ensure the text is visible
              }
        end,
        styles = {
            sidebars = "transparent", -- Ensures sidebars, including nvim-tree, are transparent
            floats = "transparent",
          }
      })
      vim.cmd("colorscheme tokyonight")  -- Apply the colorscheme
    end,
  },
  {
    'tribela/transparent.nvim',
    event = 'VimEnter',
    config = true
    },
    {
    "sphamba/smear-cursor.nvim",
    opts = {
        smear_between_buffers = true,
        smear_between_neighbor_lines = true,
        scroll_buffer_space = true,
        legacy_computing_symbols_support = false,
        smear_insert_mode = true,        }
    }
}
