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
            require("tokyonight").setup({
                transparent = true,

                styles = {sidebars = "transparent", floats = "transparent"},

                on_colors = function(c)
                    -- 全体的に明るい色へ調整
                    c.bg_dark = "#202020"
                    c.bg = "#262626"
                    c.bg_highlight = "#333333"

                    -- コメント
                    -- c.comment = "#a0a0a0"
                    c.comment = "#FFFFFF"

                    -- 全体の文字色を明るく
                    c.fg = "#f5f5f5"
                    -- キーワード等
                    c.fg_dark = "#d8d8d8"
                    -- 行番号
                    c.fg_gutter = "#808080"
                end,

                on_highlights = function(hl, c)
                    -- 透過維持
                    hl.Normal = {fg = c.fg, bg = "NONE"}
                    hl.NormalNC = {fg = c.fg, bg = "NONE"}
                    hl.NormalFloat = {fg = c.fg, bg = "NONE"}

                    hl.SignColumn = {bg = "NONE"}
                    hl.LineNr = {fg = "#6e6e6e", bg = "NONE"}
                    hl.CursorLineNr = {fg = "#d7af5f", bold = true}

                    -- 選択範囲を少し見やすく
                    hl.Visual = {bg = "#404050"}

                    -- カーソル行
                    hl.CursorLine = {bg = "#2a2a2a"}

                    -- ポップアップ
                    hl.Pmenu = {fg = c.fg, bg = "#303030"}

                    hl.PmenuSel = {fg = "#ffffff", bg = "#505070"}
                end
            })

            vim.cmd.colorscheme("tokyonight")
        end
    }
})

require("lazy").setup(spec)
