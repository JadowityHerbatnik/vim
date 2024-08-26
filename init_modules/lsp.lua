local nvim_lsp = require('lspconfig')


local capabilities = require("cmp_nvim_lsp").default_capabilities()

----------------
-- DIAGNOSTICS--
----------------

-- custom diagnostic icons
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- always show sign column to avoid changing window width when diagnostic appears
vim.o.signcolumn = 'yes'
vim.diagnostic.config({
  virtual_text = false,
  signs = true,
  underline = true,
  update_in_insert = true,
  severity_sort = true,
  float = {
    -- display source of diagnostic like linter or language server
    source = "always", -- Or "if_many"
  },
})

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- formatting for typescript and json files is handled by null-ls
  if client.name == 'tsserver' or client.name == 'jsonls' then
    client.server_capabilities.documentFormattingProvider = false
    client.server_capabilities.documentRangeFormattingProvider = false
  end


  local opts = { noremap = true, silent = true, buffer = bufnr }

  local telescope = require("telescope.builtin")


  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
  vim.keymap.set('n', 'gd', function() telescope.lsp_definitions() end, opts)
  vim.keymap.set('n', 'gvd', function() telescope.lsp_definitions({ jump_type = 'vsplit' }) end, opts)
  vim.keymap.set('n', 'gtd', function() telescope.lsp_definitions({ jump_type = 'tab' }) end, opts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
  vim.keymap.set('n', 'gI', vim.lsp.buf.implementation, opts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
  vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
  vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
  vim.keymap.set('n', '<space>wl', function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end, opts)
  vim.keymap.set('n', 'gy', function() telescope.lsp_type_definitions() end, opts)
  vim.keymap.set('n', 'gvy', function() telescope.lsp_type_definitions({ jump_type = 'vsplit' }) end, opts)
  vim.keymap.set('n', 'gty', function() telescope.lsp_type_definitions({ jump_type = 'tab' }) end, opts)
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, opts)
  vim.keymap.set('n', 'gr', function() telescope.lsp_references({ fname_width = 60 }) end, opts)
  vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
  vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
  vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
  vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)
  vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, opts)
end

-- setup Lua path
local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

-- setup all servers in one loop
local servers = { 'tsserver', 'jsonls', 'yamlls', 'hls', 'prismals', 'pyright',
  'phpactor' }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    capabilities = capabilities,
    on_attach = on_attach,
  }
end

nvim_lsp.cssls.setup {
  capabilities = capabilities,
  on_attach = on_attach,
  init_options = {
    provideFormatter = false,
  }
}

nvim_lsp.stylelint_lsp.setup {
  capabilities = capabilities,
  on_attach = on_attach,
  filetypes = { 'css', 'scss', 'less' },
  settings = {
    stylelintplus = { autoFixOnFormat = true, autoFixOnSave = true },
  }
}

nvim_lsp.lua_ls.setup {
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
        path = runtime_path,
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { 'vim' },
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      telemetry = {
        enable = false,
      },
    },
  },
}

--------------------
-- AUTOCOMPLETION --
--------------------


-- luasnip setup
local luasnip = require 'luasnip'

require("luasnip.loaders.from_vscode").lazy_load()


-- nvim-cmp setup
local cmp = require 'cmp'
cmp.setup {
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-t>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
  }),
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  },
}

-- use null-ls as a proxy for eslint and prettier
local null_ls = require("null-ls")
null_ls.setup({
  sources = {
    null_ls.builtins.formatting.prettierd,
    null_ls.builtins.formatting.eslint_d,
    null_ls.builtins.code_actions.eslint_d,
    null_ls.builtins.diagnostics.eslint_d,
    on_attach = function(client, bufnr)
      if client.supports_method("textDocument/formatting") then
        vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
        vim.api.nvim_create_autocmd("BufWritePre", {
          group = augroup,
          buffer = bufnr,
          callback = function()
            vim.lsp.buf.format({ bufnr = bufnr })
          end,
        })
      end
    end,
  },
})
