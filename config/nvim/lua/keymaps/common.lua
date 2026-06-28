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

map("x", "v", "$h", {noremap = true})

map("n", "s*", function()
    local word = vim.fn.expand("<cword>")
    return string.format(":%%substitute/\\<%s\\>/", word)
end, {expr = true})

map({"n", "x"}, "sy", "<cmd>call YanktmpYank()<CR>", opts)
map({"n", "x"}, "sp", "<cmd>call YanktmpPaste_p()<CR>", opts)
map({"n", "x"}, "sP", "<cmd>call YanktmpPaste_P()<CR>", opts)

-- Tab
-- プレフィックスキー
map("n", "t", "<Nop>", opts)

-- t1 ～ t9 でタブ移動
for i = 1, 9 do map("n", "t" .. i, string.format("<Cmd>tabnext %d<CR>", i), opts) end

-- tc : 一番右に新しいタブを作成
map("n", "tc", "<Cmd>tablast | tabnew<CR>", opts)

-- tx : 現在のタブを閉じる
map("n", "tx", "<Cmd>tabclose<CR>", opts)

-- tn : 次のタブ
map("n", "tn", "<Cmd>tabnext<CR>", opts)

-- tp : 前のタブ
map("n", "tp", "<Cmd>tabprevious<CR>", opts)

-- t0 : 現在のウィンドウ以外を閉じる
map("n", "t0", "<Cmd>only<CR>", opts)
