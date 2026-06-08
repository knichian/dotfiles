
local configs = {
    virtual_lines = true,
    virtual_text = false,
    underline = true,
    signs = true,
    severity_sort = true,
}

vim.diagnostic.config(configs)

require("lsps.lua_config")
require("lsps.python_config")

