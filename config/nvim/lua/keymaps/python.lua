local M = {}

function M.setup(bufnr)
    local map = vim.keymap.set

    local opts = {buffer = bufnr, silent = true}

    map("n", "<C-t>p", "<cmd>!python3 %<CR>", opts)
    map("n", "<C-t>8", "<cmd>!pep8 %<CR>", opts)
    map("n", "<C-t>fl", "<cmd>!pyflakes %<CR>", opts)
    map("n", "<C-t>f8", "<cmd>!flake8 %<CR>", opts)
    map("n", "<C-t>a8", "<cmd>Autopep8<CR>", opts)
    map("n", "<C-t>nn", "<cmd>!nosetests -v<CR>", opts)
    map("n", "<C-t>nt", "<cmd>!nosetests -v -a target %<CR>", opts)
end

return M
