local get_option = vim.filetype.get_option
vim.filetype.get_option = function(filetype, option)
  return option == "commentstring"
      and require("ts_context_commentstring.internal").calculate_commentstring()
      or get_option(filetype, option)
end

vim.api.nvim_create_autocmd("FileType", {
  pattern = "openscad",
  callback = function()
    vim.opt_local.commentstring = "// %s"
  end,
})
