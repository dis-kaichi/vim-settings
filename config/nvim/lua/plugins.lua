local lazypath = vim.fn.stdpath("data") .. "/lazy"
vim.opt.rtp:prepend(lazypath)

local spec = {}

local function load_plugins(module, ft)
    for _, plugin in ipairs(require(module)) do
        if type(plugin) == "string" then
            table.insert(spec, {plugin, ft = ft})
        else
            plugin.ft = ft
            table.insert(spec, plugin)
        end
    end
end

load_plugins("plugins.python", "python")
load_plugins("plugins.lisp", "lisp")
load_plugins("plugins.asm", {"asm", "nasm"})
load_plugins("plugins.hylang", "hy")
load_plugins("plugins.clisp", "lisp")
load_plugins("plugins.clojure", "clojure")
load_plugins("plugins.coq", "coq")
load_plugins("plugins.cpp", {"c", "cpp"})
load_plugins("plugins.frege", "frege")
load_plugins("plugins.fsharp", "fsharp")
load_plugins("plugins.haskell", "haskell")
load_plugins("plugins.java", "java")
load_plugins("plugins.javascript", {"javascript", "html"})
load_plugins("plugins.markdown", "markdown")
load_plugins("plugins.org", "org")
load_plugins("plugins.ruby", "ruby")
load_plugins("plugins.tidal", "tidal")
load_plugins("plugins.typescript", "typescript")
load_plugins("plugins.dart", "dart")
load_plugins("plugins.todo", "todo")
load_plugins("plugins.lua", "lua")
load_plugins("plugins.prolog", "prolog")

vim.list_extend(spec, {
    {"tomtom/tcomment_vim"}, -- コメント
    -- 静的解析ツール
    -- 必要に応じて各種ツールを別途DL : https://news.mynavi.jp/techplus/article/techp5012/
    {"dense-analysis/ale"}, --
    -- テーブル
    {"h1mesuke/vim-alignta"}, {"mattn/vim-maketable"}, --
    -- ===================
    -- vim yank結果共有
    -- ===================
    {'rtakasuke/yanktmp.vim'}, {"nvim-lua/plenary.nvim", lazy = true},
    {'folke/lazy.nvim'}, --
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("tokyonight").setup({transparent = true})

            vim.cmd.colorscheme("tokyonight")
        end
    }
})

require("lazy").setup(spec)
