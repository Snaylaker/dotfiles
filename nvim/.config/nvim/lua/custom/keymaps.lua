vim.keymap.set('n', '<leader>ga', ':G <CR>', { desc = '[G]it menu' })
vim.keymap.set('n', '<leader>gp', ':G push <CR>', { desc = '[G]it [P]ush' })
vim.keymap.set('n', '<C-f>', '<cmd>silent !tmux neww tmux-sessionizer<CR>', { desc = '[F]ind Tmux Session' })
