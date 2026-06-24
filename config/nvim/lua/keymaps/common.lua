-- キーマッピング
local map = vim.keymap.set

map("i", "jj", "<Esc>")

map("n", "j", "gj")
map("n", "k", "gk")

map("n", "n", "nzz")
map("n", "N", "Nzz")
map("n", "*", "*zz")
map("n", "#", "#zz")

map("n", "<Esc><Esc>", ":nohlsearch<CR>", {silent = true})

map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

map("n", "<C-n>", ":bnext<CR>")
map("n", "<C-p>", ":bprevious<CR>")
map("n", "<C-q>", ":bdelete<CR>")
