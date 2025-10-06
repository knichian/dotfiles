return {
	{
		"mason-org/mason.nvim",
		enable = true,
		lazy = false,
		dependencies = {},
		opts = {
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗"
				},
			},
		},
	},
	{
		"mason-org/mason-lspconfig.nvim",
		enable = true,
		lazy = false,
		dependencies = {},
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
		enable = true,
		lazy = false,
		dependencies = {},
		config = function() return require('lsp') end,
		opts = {},
	}
}
