return {
    {
        "mason-org/mason.nvim",
        lazy = false,
        opts = { },
    },
    {
        "mason-org/mason-lspconfig.nvim",
--         dependencies = {
--             "mason-org/mason.nvim",
--             "neovim/nvim-lspconfig",
--         },
        opts = {
            ensure_installed = {
                "lua_ls",
                "pyright",
                "ts_ls",
                "rust_analyzer",
                "clangd"
            },
        },
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
--             return require('lsp')
        end,
        opts = {  },
    }
}
