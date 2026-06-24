local M = {}

function M.setup(bufnr)
    local map = vim.keymap.set

    local opts = {buffer = bufnr, silent = true}

    map("n", "<C-t>p", "<cmd>!lua %<CR>", opts)
    map("n", "<C-t>l", "<cmd>!llove .<CR>", opts)
end

return M
