require("keymaps.cpp").setup(vim.api.nvim_get_current_buf())

vim.bo.tabstop = 2
vim.bo.shiftwidth = 2

vim.opt_local.matchpairs:append("<:>")

vim.opt_local.formatoptions:remove({"r", "o"})
