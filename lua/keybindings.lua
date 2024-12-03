-- Telescope
local telescope = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', telescope.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>g', telescope.live_grep, { desc = 'Telescope live grep' })

-- NvimTree
vim.keymap.set('n', '<leader>e','<cmd>NvimTreeToggle<cr>')

-- Default
vim.keymap.set({'n', 'x'}, '<C-S>i', '<cmd>vim.lsp.buff.format({async = true})<cr>')

-- LuaSnip
