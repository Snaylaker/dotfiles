-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
vim.keymap.set('n', '<leader>ga', ':G <CR>', { desc = '[G]it menu' })
vim.keymap.set('n', '<leader>gp', ':G push <CR>', { desc = '[G]it [P]ush' })
vim.keymap.set('n', '<leader>e', ':Explore <CR>', { desc = '[E]xplore' })
vim.keymap.set('n', '<C-f>', '<cmd>silent !tmux neww tmux-sessionizer<CR>', { desc = '[F]ind Tmux Session' })
return {}
