local M = {}

function M.setup(bufnr)
    local map = vim.keymap.set

    local opts = {buffer = bufnr, silent = true}

    map("n", "<C-t>p", "<cmd>!joker %<CR>", opts)
    map("n", "<C-t>f", "<cmd>!cljfmt fix %<CR>", opts)

end

return M
