local lspconfig = require 'lspconfig'

-- Configure Tailwind CSS Language Server
lspconfig.tailwindcss.setup {
  filetypes = { 'html', 'css', 'javascript', 'javascriptreact', 'typescript', 'typescriptreact', 'vue', 'svelte' },
  root_dir = lspconfig.util.root_pattern('tailwind.config.js', 'tailwind.config.ts', 'postcss.config.js', 'postcss.config.ts', 'package.json', '.git'),
}

-- Configure HTMX Language Server
lspconfig.htmx.setup {
  filetypes = { 'html', 'templ' },
  root_dir = lspconfig.util.root_pattern('.git', 'index.html'),
}

-- Configure HTML Language Server
lspconfig.html.setup {
  filetypes = { 'html', 'templ' },
}
