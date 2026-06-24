local template = require("templates")

local group = vim.api.nvim_create_augroup("PythonTemplates", {clear = true})

vim.api.nvim_create_autocmd("BufNewFile", {
    group = group,
    pattern = "test_*.py",

    callback = function()
        template.read_template(vim.fn.stdpath("config") ..
                                   "/templates/python/pynoseskelton.py")
    end
})

vim.api.nvim_create_autocmd("BufNewFile", {
    group = group,
    pattern = "*.py",

    callback = function()
        local file = vim.fn.expand("%:t")

        if not file:match("^test_") then
            template.read_template(vim.fn.stdpath("config") ..
                                       "/templates/python/pyskelton.py")
        end
    end
})
