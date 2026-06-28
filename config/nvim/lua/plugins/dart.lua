return {
    "dart-lang/dart-vim-plugin",
    "neovim/nvim-lspconfig",
    "nvim-treesitter/nvim-treesitter",
    dependencies = {"stevearc/dressing.nvim"},
    {
        "nvim-flutter/flutter-tools.nvim",
        lazy = false,
        dependencies = {"nvim-lua/plenary.nvim"},
        config = function() require("config.flutter") end
    }
}
