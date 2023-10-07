local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

-- Add file to Harpoon list
vim.keymap.set('n', '•', function() harpoon:list():append() end)

-- Toggle Harpoon quick menu
vim.keymap.set('n', '<leader>h', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

-- Navigate files within Harpoon list
vim.keymap.set('n', '', function() harpoon:list():select(1) end)
vim.keymap.set('n', 'ë', function() harpoon:list():select(2) end)
vim.keymap.set('n', '“', function() harpoon:list():select(3) end)
vim.keymap.set('n', "‘", function() harpoon:list():select(4) end)
