local M = {}

function M.read_template(path) vim.cmd("0r " .. vim.fn.fnameescape(path)) end

return M
