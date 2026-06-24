local M = {}

function M.setup(bufnr)
    local map = vim.keymap.set

    local opts = {buffer = bufnr, silent = true}

    map("n", "<C-t>p", "<cmd>PrevimOpen <CR>", opts)
    map("n", "<C-t>m", "<cmd>!marp % -p > /dev/null 2>&1 &<CR>", opts)
    map("n", "cc", "<cmd>CheckboxToggle<CR>", opts)
    map("n", "<C-l>", "<cmd>Alignta <Bar><CR>", opts)
end

return M
