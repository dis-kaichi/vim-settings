--------------------------------------------------
-- インデント
--------------------------------------------------
vim.opt_local.autoindent = true
vim.opt_local.smartindent = true

vim.opt_local.tabstop = 2
vim.opt_local.shiftwidth = 2
vim.opt_local.softtabstop = 2
vim.opt_local.expandtab = true

--------------------------------------------------
-- 表示
--------------------------------------------------

vim.opt_local.formatoptions:remove({"r", "o"})

--------------------------------------------------
-- 大文字小文字
--------------------------------------------------

vim.opt_local.ignorecase = true

--------------------------------------------------
-- キーマップ
--------------------------------------------------

pcall(function() require("keymaps.sql").setup(0) end)
