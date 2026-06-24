local M = {}

function M.setup(bufnr)
    local map = vim.keymap.set

    local opts = {buffer = bufnr, silent = true}

    map("n", "<C-t>p", "<cmd>!hy %<CR>", opts)
    map("n", "<C-t>e", "<cmd>!hy2py %<CR>", opts)

end

return M
