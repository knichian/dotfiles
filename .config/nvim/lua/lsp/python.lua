vim.lsp.config['pyright'] = {
	settings = {
		Python = {
			typeCheckingMode = "basic",
		},
	},
}
vim.lsp.enable('pyright')
