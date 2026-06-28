require("flutter-tools").setup({
    flutter_path = vim.fn.trim(vim.fn.system("which flutter")),
    widget_guides = {enabled = true},
    lsp = {settings = {dart = {completeFunctionCalls = true, showTodos = true}}},
    debugger = {enabled = false}
})
