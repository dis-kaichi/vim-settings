local M = {}

function M.setup(bufnr)
    local map = vim.keymap.set

    local opts = {buffer = bufnr, silent = true}

    -- gcc compile
    map("n", "<C-t>C", "<cmd>!gcc -o %:r %<CR>", opts)

    -- QuickRun asm compile
    map("n", "<C-t>c", "<cmd>QuickRun -type asmcompile<CR>", opts)

    -- execute binary
    map("n", "<C-t>P", "<cmd>!./%:r<CR>", opts)

    -- QuickRun execution
    map("n", "<C-t>p", "<cmd>QuickRun -type execution<CR>", opts)

    -- clang-format operator
    map("n", "=", "<Plug>(operator-clang-format)", opts)

    -- online-judge-tools
    map("n", "<C-t>T", "<cmd>!oj test -c ./%:r<CR>", opts)

    -- QuickRun
    map("n", "<C-t>q", "<cmd>QuickRun<CR>", opts)

    -- qmake
    map("n", "<C-t>qq", "<cmd>!qmake<CR>", opts)

    -- make
    map("n", "<C-t>qm", "<cmd>!make<CR>", opts)

    -- execute project binary
    map("n", "<C-t>qp", "<cmd>!./%:p:h:t<CR>", opts)

    -- QuickRun停止
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
