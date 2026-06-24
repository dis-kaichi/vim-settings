require("keymaps.lua").setup(vim.api.nvim_get_current_buf())

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


local group = vim.api.nvim_create_augroup(
  "LuaFormatOnSave",
  { clear = false }
)

vim.api.nvim_create_autocmd(
  "BufWritePre",
  {
    group = group,
    buffer = 0,
    callback = function()
      vim.fn.LuaFormat()
    end,
  }
)
