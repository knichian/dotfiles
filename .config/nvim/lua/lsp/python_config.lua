
vim.lsp.config["pyright"] = {
    settings = {
        python = {
            analysis = {
                typeCheckingMode = "basic",
            },
        },
    },
}

vim.lsp.enable("pyright")
vim.lsp.enable("black")
