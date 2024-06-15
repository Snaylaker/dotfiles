return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-lua/plenary.nvim',
    'marilari88/neotest-vitest',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  config = function()
    require('neotest').setup {
      adapters = {
        require 'neotest-vitest',
      },
    }
    vim.api.nvim_set_keymap(
      'n',
      '<leader>twr',
      "<cmd>lua require('neotest').run.run({ vitestCommand = 'vitest --watch' })<CR>",
      { noremap = true, silent = true, desc = 'Run Watch' }
    )

    vim.api.nvim_set_keymap(
      'n',
      '<leader>twf',
      '<cmd>lua require("neotest").run.run({ vitestCommand = "vitest --watch " .. vim.fn.expand("%") })<CR>',
      { noremap = true, silent = true, desc = 'Run Watch File' }
    )
  end,
}
