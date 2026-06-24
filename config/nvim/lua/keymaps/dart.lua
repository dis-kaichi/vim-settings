local M = {}

function M.setup(bufnr)
    local map = vim.keymap.set

    local opts = {buffer = bufnr, silent = true}

    map("n", "<C-t>p", "<cmd>!dart %<CR>", opts)
    map("n", "<C-t>t", "<cmd>!flutter test %<CR>", opts)
    map("n", "<C-t>fp", "<cmd>!flutter pub get<CR>", opts)
    map("n", "<C-t>ft", "<cmd>!flutter test<CR>", opts)
    map("n", "==", "<cmd>!dart format %<CR>", opts)
end

return M
