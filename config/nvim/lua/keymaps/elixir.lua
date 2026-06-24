local M = {}

function M.setup(bufnr)
    local map = vim.keymap.set

    local opts = {buffer = bufnr, silent = true}

    map("n", "<C-t>p", "<cmd>!elixir %<CR>", opts)
    map("n", "<C-t>f", "<cmd>!mix format %<CR>", opts)
    map("n", "==", "<cmd>!mix format %<CR>", opts)

end

return M
