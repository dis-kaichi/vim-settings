local M = {}

function M.setup(bufnr)
    local map = vim.keymap.set

    local opts = {buffer = bufnr, silent = true}

    -- -- sqlite
    -- map("n", "<C-t>s", "<cmd>!sqlite3<CR>", opts)
    --
    -- -- PostgreSQL
    -- map("n", "<C-t>p", "<cmd>!psql<CR>", opts)
    --
    -- -- MySQL
    -- map("n", "<C-t>m", "<cmd>!mysql<CR>", opts)
    --
    -- -- sqlfluff format
    -- map("n", "<C-t>f", "<cmd>!sqlfluff fix %<CR>", opts)
    --
    -- -- sqlfluff lint
    -- map("n", "<C-t>l", "<cmd>!sqlfluff lint %<CR>", opts)
end

return M
