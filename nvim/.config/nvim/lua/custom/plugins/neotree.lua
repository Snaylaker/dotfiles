return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  config = function()
    -- Toggle Neotree
    vim.keymap.set('n', '<leader>Ee', ':Neotree toggle<CR>', { noremap = true, silent = true, desc = '[E]xplore' })

    vim.keymap.set('n', '<leader>Ec', ':Neotree reveal<CR>', { noremap = true, silent = true, desc = '[E]xplore [C]urrent buffer directory' })
  end,
}
