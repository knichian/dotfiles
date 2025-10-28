
vim.diagnostic.config({
	virtual_lines = true,
	virtual_text = false,
	underline = true,
	signs = true,
	severity_sort = true,
})

require("lsp.lua_ls")
require("lsp.pyright")

