vim.keymap.set('n', '<leader>xx', function()
  require('trouble').toggle()
end, { desc = '[T]oggle Trouble list' })
vim.keymap.set('n', '<leader>xw', function()
  require('trouble').toggle 'workspace_diagnostics'
end, { desc = '[T]oggle Workspace Diagnostics in Trouble' })
vim.keymap.set('n', '<leader>xd', function()
  require('trouble').toggle 'document_diagnostics'
end, { desc = '[T]oggle Document Diagnostics in Trouble' })
vim.keymap.set('n', '<leader>xq', function()
  require('trouble').toggle 'quickfix'
end, { desc = '[T]oggle Quickfix in Trouble' })
vim.keymap.set('n', '<leader>xl', function()
  require('trouble').toggle 'loclist'
end, { desc = '[T]oggle Location List in Trouble' })
vim.keymap.set('n', 'gR', function()
  require('trouble').toggle 'lsp_references'
end, { desc = '[T]oggle LSP References in Trouble' })
