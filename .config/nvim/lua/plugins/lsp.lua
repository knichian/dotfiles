return {
	{
		"neovim/nvim-lspconfig",
		enable = true,
		lazy = false,
		dependencies = {},
		config = function()
			return require('lsp')
		end,
		opts = {},
	},
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
		dependencies = {
			"mason-org/mason.nvim",
		},
		opts = {},
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		enable = true,
		lazy = false,
		dependencies = {
			"mason-org/mason-lspconfig.nvim",
		},
		opts = {
			ensure_installed = {
				"lua_ls",
				"stylua",
				"pyright",
				"clangd",
				"ts_ls",
				"rust_analyzer",
			},
		}
	},
}
