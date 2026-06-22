-- Configure Tailwind CSS Language Server
vim.lsp.config('tailwindcss', {
  filetypes = { 'html', 'css', 'javascript', 'javascriptreact', 'typescript', 'typescriptreact', 'vue', 'svelte' },
  root_dir = function(bufnr, on_dir)
    local root = vim.fs.root(bufnr, {
      'tailwind.config.js',
      'tailwind.config.ts',
      'postcss.config.js',
      'postcss.config.ts',
      'package.json',
      '.git',
    })
    if root then
      on_dir(root)
    end
  end,
})
vim.lsp.enable('tailwindcss')

-- Configure HTMX Language Server
vim.lsp.config('htmx', {
  filetypes = { 'html', 'templ' },
  root_dir = function(bufnr, on_dir)
    local root = vim.fs.root(bufnr, { '.git', 'index.html' })
    if root then
      on_dir(root)
    end
  end,
})
vim.lsp.enable('htmx')

-- Configure HTML Language Server
vim.lsp.config('html', {
  filetypes = { 'html', 'templ' },
})
vim.lsp.enable('html')
