---@type vim.lsp.Config
local config = {
    settings = {
        Python = {
            typeCheckingMode = "basic",
        },
    },
}

vim.lsp.config("pyright", config)
