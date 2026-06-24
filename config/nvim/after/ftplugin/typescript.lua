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
-- matchpairs
--------------------------------------------------

vim.opt_local.matchpairs:append("<:>")

--------------------------------------------------
-- キーマップ
--------------------------------------------------

pcall(function() require("keymaps.typescript").setup(0) end)
