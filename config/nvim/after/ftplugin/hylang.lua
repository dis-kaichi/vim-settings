require("keymaps.hylang").setup(vim.api.nvim_get_current_buf())

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
-- Rainbow Parentheses
--------------------------------------------------

vim.schedule(function()
    pcall(vim.cmd, "RainbowParenthesesToggle")
    pcall(vim.cmd, "RainbowParenthesesLoadRound")
    pcall(vim.cmd, "RainbowParenthesesLoadSquare")
    pcall(vim.cmd, "RainbowParenthesesLoadBraces")
end)
