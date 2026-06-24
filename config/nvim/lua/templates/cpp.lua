local template = require("templates")

local group = vim.api.nvim_create_augroup("CppTemplates", {clear = true})

vim.api.nvim_create_autocmd("BufNewFile", {
    group = group,
    pattern = "*.cpp",

    callback = function()
        template.read_template(vim.fn.stdpath("config") ..
                                   "/templates/cpp/skelton.py")
    end
})
