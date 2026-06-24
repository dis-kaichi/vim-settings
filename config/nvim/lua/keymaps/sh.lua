local M = {}

function M.setup(bufnr)
    local map = vim.keymap.set

    local opts = {buffer = bufnr, silent = true}

    map("n", "<C-t>p", "<cmd>!. %<CR>", opts)

end

return M
