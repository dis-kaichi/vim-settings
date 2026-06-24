local M = {}

function M.setup(bufnr)
    local map = vim.keymap.set

    local opts = {buffer = bufnr, silent = true}

    map("n", "<C-t>p", "<cmd>!node %<CR>", opts)
    map("n", "<C-t>c", "<cmd>!node --check %<CR>", opts)
    map("n", "<C-t>t", "<cmd>!node test<CR>", opts)

end

return M
