local M = {}

function M.setup(bufnr)
    local map = vim.keymap.set

    local opts = {buffer = bufnr, silent = true}

    -- cargo run
    map("n", "<C-t>p", "<cmd>!cargo run<CR>", opts)

    -- cargo build
    map("n", "<C-t>c", "<cmd>!cargo build<CR>", opts)

    -- cargo test
    map("n", "<C-t>t", "<cmd>!cargo test<CR>", opts)

    -- cargo clippy
    map("n", "<C-t>l", "<cmd>!cargo clippy<CR>", opts)

    -- cargo fmt
    map("n", "<C-t>f", "<cmd>!cargo fmt<CR>", opts)
    map("n", "==", "<cmd>!cargo fmt<CR>", opts)

    -- rustc 単体コンパイル
    map("n", "<C-t>C", "<cmd>!rustc % -o %:r<CR>", opts)

    -- rustc 単体実行
    map("n", "<C-t>P", "<cmd>!./%:r<CR>", opts)
end

return M
