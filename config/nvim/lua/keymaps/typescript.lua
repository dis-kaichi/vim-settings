local M = {}

function M.setup(bufnr)
    local map = vim.keymap.set

    local opts = {buffer = bufnr, silent = true}

    -- 実行
    map("n", "<C-t>p", "<cmd>!tsx %<CR>", opts)

    -- コンパイルチェック
    map("n", "<C-t>c", "<cmd>!tsc --noEmit %<CR>", opts)

    -- ビルド
    map("n", "<C-t>b", "<cmd>!tsc %<CR>", opts)

    -- npm test
    map("n", "<C-t>t", "<cmd>!npm test<CR>", opts)

    -- ESLint
    map("n", "<C-t>l", "<cmd>!npx eslint %<CR>", opts)

    -- Prettier
    map("n", "<C-t>f", "<cmd>!npx prettier --write %<CR>", opts)

    -- Node REPL
    map("n", "<C-t>r", "<cmd>terminal node<CR>", opts)
end

return M
