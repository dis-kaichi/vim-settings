require("keymaps.markdown").setup(vim.api.nvim_get_current_buf())

--------------------------------------------------
-- パフォーマンス
--------------------------------------------------

vim.opt_local.synmaxcol = 200
vim.opt_local.lazyredraw = true
vim.opt_local.ttyfast = true
vim.opt_local.redrawtime = 10000 -- re=1 に近い効果を期待する場合

--------------------------------------------------
-- vim-markdown
--------------------------------------------------

vim.g.vim_markdown_folding_disabled = 1
vim.g.vim_markdown_liquid = 1
vim.g.vim_markdown_math = 0
vim.g.vim_markdown_frontmatter = 1
vim.g.vim_markdown_toml_frontmatter = 1
vim.g.vim_markdown_json_frontmatter = 0

--------------------------------------------------
-- Folding
--------------------------------------------------

vim.opt_local.foldenable = false

--------------------------------------------------
-- Indent
--------------------------------------------------

vim.opt_local.tabstop = 2
vim.opt_local.shiftwidth = 2
vim.opt_local.softtabstop = 2
vim.opt_local.expandtab = true
