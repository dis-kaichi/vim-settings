-- lua/config/tabline.lua
local M = {}

function M.tabline()
    local s = ""

    for i = 1, vim.fn.tabpagenr("$") do
        local bufnrs = vim.fn.tabpagebuflist(i)
        local winnr = vim.fn.tabpagewinnr(i)
        local bufnr = bufnrs[winnr]

        local modified = vim.bo[bufnr].modified and "!" or " "
        local name = vim.fn.bufname(bufnr)

        if name == "" then
            name = "[No Name]"
        else
            name = "[" .. vim.fn.fnamemodify(name, ":t") .. "]"
        end

        local hl = (i == vim.fn.tabpagenr()) and "TabLineSel" or "TabLine"

        s = s .. "%" .. i .. "T" .. "%#" .. hl .. "#" .. i .. ":" .. name ..
                modified .. "%#TabLineFill# "
    end

    s = s .. "%#TabLineFill#%T%=%#TabLine#"

    return s
end

function M.setup()
    vim.o.tabline = "%!v:lua.require'config.tabline'.tabline()"
    vim.o.showtabline = 2
end

return M
