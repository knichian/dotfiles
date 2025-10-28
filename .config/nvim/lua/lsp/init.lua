require("lsp.lua_ls")
-- require("lsp.pyright")

vim.diagnostic.config(
	{
		virtual_lines = true,
		virtual_text = false,
		underline = true,
	}
)

vim.lsp.enable('pyright')
vim.lsp.enable('lua_ls')
