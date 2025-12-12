-- Telescope
local telescope = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', telescope.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>g', telescope.live_grep, { desc = 'Telescope live grep' })

-- NvimTree
vim.keymap.set('n', '<leader>e','<cmd>NvimTreeToggle<cr>')

-- BufferLine
vim.keymap.set({'n', 'x'}, '<leader>w', '<cmd>bd<cr>')
vim.keymap.set({'n', 'x'}, '<leader>h', '<cmd><cr>')

-- Formatting
-- vim.keymap.set({'n', 'x'}, '')
