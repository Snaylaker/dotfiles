vim.keymap.set('n', '<leader>Ee', ':NERDTreeToggle<CR>', { noremap = true, silent = true, desc = '[E]xplore' })
vim.keymap.set('n', '<leader>Ec', ':NERDTree %<CR>',
  { noremap = true, silent = true, desc = '[E]xplore [C]urrent buffer directory' })
