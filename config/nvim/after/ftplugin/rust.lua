require("keymaps.rust").setup(vim.api.nvim_get_current_buf())

--------------------------------------------------
-- インデント
--------------------------------------------------

vim.opt_local.autoindent = true
vim.opt_local.smartindent = true

vim.opt_local.tabstop = 4
vim.opt_local.shiftwidth = 4
vim.opt_local.softtabstop = 4
vim.opt_local.expandtab = true

--------------------------------------------------
-- 表示
--------------------------------------------------

vim.opt_local.formatoptions:remove({"r", "o"})

--------------------------------------------------
-- 保存時フォーマット
--------------------------------------------------

vim.api.nvim_create_autocmd("BufWritePre", {
    buffer = 0,
    callback = function() vim.cmd("silent! !cargo fmt") end
})

--------------------------------------------------
-- キーマップ
--------------------------------------------------

pcall(function() require("keymaps.rust").setup(0) end)
