vim.keymap.set('i', '<leader>cp', '<Esc> :Copilot panel<CR>', { noremap = true, silent = true })
vim.g.copilot_filetypes = {
  ['*'] = false,
  typescript = true,
  javascript = true,
  javascriptreact = true,
  typescriptreact = true,
  css = true,
  scss = true,
  lua = true,
  python = true,
  php = true,
  openscad = true,
  twig = true,
}
