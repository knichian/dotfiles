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
				border = "rounded",
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
				"lua_ls", -- lua
				"stylua", -- lua formating
				"pyright", -- python
				"clangd", -- C/C++
				"ts_ls", -- typescript
				"rust_analyzer", -- rust
				"cmake-language-server", -- cmake
				"templ", -- Go + HTML
				"systemd-lsp", -- systemd
				"tectonic", -- latex
			},
		},
	},
}
