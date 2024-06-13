return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup()

    -- Toggle Harpoon quick menu
    vim.keymap.set('n', '<leader>h', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)

    -- Add file to Harpoon:list

    local fileNavigationShortcuts
    local addFileShortcut

    if vim.loop.os_uname().sysname == 'Darwin' then
      fileNavigationShortcuts = { '', 'ë', '“', '‘' }
      addFileShortcut = '•'
    elseif vim.loop.os_uname().sysname == 'Linux' then
      fileNavigationShortcuts = { '<ctrl>1', '<ctrl>2', '<ctrl>3', '<ctrl>4' }
      addFileShortcut = ''
    end

    vim.keymap.set('n', addFileShortcut, function()
      harpoon:list():add()
    end)

    -- Add file to Harpoon:list:
    for i, key in ipairs(fileNavigationShortcuts) do
      vim.keymap.set('n', key, function()
        harpoon:list():select(i)
      end)
    end
  end,
}
