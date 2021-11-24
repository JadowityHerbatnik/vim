require('telescope').setup({
  extensions = {
    fzf = {
      fuzzy = true, -- false will only do exact matching
      override_generic_sorter = true, -- override the generic sorter
      override_file_sorter = true, -- override the file sorter
      case_mode = "smart_case", -- or "ignore_case" or "respect_case"
    }
  },
  defaults = {
    layout_config = {
      vertical = { width = 0.9, preview_cutoff = 10, height = 0.95, preview_height = 0.6 }
    },
    layout_strategy = 'vertical',
    preview = { timeout = 5000 }
  },
  pickers = { find_files = { hidden = true } }
})
require('telescope').load_extension('fzf')
