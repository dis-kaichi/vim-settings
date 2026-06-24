-- after/ftplugin/python.lua
require("keymaps.python").setup(vim.api.nvim_get_current_buf())

vim.bo.autoindent = true
vim.bo.smartindent = true

vim.bo.tabstop = 8
vim.bo.shiftwidth = 4
vim.bo.softtabstop = 4
vim.bo.expandtab = true

vim.bo.cinwords = "if,elif,else,for,while,try,except,finally,def,class"
