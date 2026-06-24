-- オプション系の設定
vim.opt.number = true
vim.opt.wrap = true
vim.opt.textwidth = 0

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.hlsearch = true

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2

vim.opt.shiftround = true
vim.opt.autoindent = true

vim.opt.hidden = true

vim.opt.backspace = "indent,eol,start"

vim.opt.list = true
vim.opt.listchars = {
    tab = "»-",
    trail = "-",
    extends = "»",
    precedes = "«",
    nbsp = "%",
    eol = "↲"
}

vim.opt.mouse = "a"

vim.opt.clipboard = "unnamedplus"

vim.opt.showmatch = true

vim.opt.foldenable = false

vim.opt.background = "dark"

-- vim.opt.ambiwidth = "double"
vim.opt.ambiwidth = "single"

if vim.env.TERM and vim.env.TERM:match("^screen") then
    vim.opt.termguicolors = false
end
