local M = {}

function M.setup(bufnr)
    local map = vim.keymap.set

    local opts = {buffer = bufnr, silent = true}

    map("n", "<C-t>p", "<cmd>!swipl %<CR>", opts)
    map("n", "<C-t>c", "<cmd>!swipl -q -t halt -s %<CR>", opts)
    map("n", "<C-t>r", "<cmd>terminal swipl<CR>", opts)
    map("n", "<C-t>l", function()
        local file = vim.fn.expand("%:p")
        vim.cmd("terminal swipl -s " .. vim.fn.shellescape(file))
    end, opts)

end

return M
