local M = {}

function M.setup(bufnr)
    local map = vim.keymap.set

    local opts = {buffer = bufnr, silent = true}

    -- compile
    map("n", "<C-t>C", "<cmd>!g++-7 -o %:r % -std=c++17<CR>", opts)

    map("n", "<C-t>c", "<cmd>QuickRun -type cppcompile<CR>", opts)

    -- run
    map("n", "<C-t>P", "<cmd>!./%:r<CR>", opts)

    map("n", "<C-t>p", "<cmd>QuickRun -type execution<CR>", opts)

    -- oj
    map("n", "<C-t>T", "<cmd>!oj test -c ./%:r<CR>", opts)

    map("n", "<C-t>t", "<cmd>QuickRun -type ojtest<CR>", opts)

    -- QuickRun
    map("n", "<C-t>q", "<cmd>QuickRun<CR>", opts)

    -- qmake / make
    map("n", "<C-t>qq", "<cmd>!qmake<CR>", opts)

    map("n", "<C-t>qm", "<cmd>!make<CR>", opts)

    map("n", "<C-t>qp", "<cmd>!./%:p:h:t<CR>", opts)

    -- mingw
    map("n", "<C-t>mc", '<cmd>!i686-w64-mingw32-g++ % -o "%:r.exe"<CR>', opts)

    map("n", "<C-t>mm", "<cmd>!make<CR>", opts)

    map("n", "<C-t>mp", '<cmd>!wine "%:r.exe"<CR>', opts)

    -- clang-format
    map({"n", "x"}, "=", "<Plug>(operator-clang-format)", opts)

    -- QuickRun stop
    map("n", "<C-c>", function()
        if vim.fn["quickrun#is_running"]() == 1 then
            vim.fn["quickrun#sweep_sessions"]()
        else
            vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-c>", true,
                                                                 false, true),
                                  "n", false)
        end
    end, opts)
end

return M
