return {
	{ -- "neovim/nvim-lspconfig",
		"neovim/nvim-lspconfig",
		dependencies = {
			-- "mason-org/mason.nvim",
		},
		config = function()
			return require("config.lsp")
		end,
		opts = {},
	},
	{ -- "mason-org/mason.nvim"
		"mason-org/mason.nvim",
		dependencies = {},
		opts = {
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
				border = "rounded",
			},
		},
	},
	{ -- "mason-org/mason-lspconfig.nvim",
		"mason-org/mason-lspconfig.nvim",
		dependencies = {
			"mason-org/mason.nvim",
			"neovim/nvim-lspconfig",
		},
		opts = {},
	},
	{ -- "WhoIsSethDaniel/mason-tool-installer.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		dependencies = {
			"mason-org/mason-lspconfig.nvim",
			"jay-babu/mason-null-ls.nvim",
			"jay-babu/mason-nvim-dap.nvim",
		},
		opts = {
			ensure_installed = {
				--- LSP ---
				-- "lua_ls", -- Lua
                "lua-language-server", -- Lua
				"pyright", -- Python
				"jedi_language_server", -- Python
				"clangd", -- C/C++
				"rust_analyzer", -- Rust
				"ts_ls", -- Typescript
				"cmake-language-server", -- CMake
				"templ", -- Go + HTML
				"systemd-lsp", -- SystemD
				"tectonic", -- LaTeX
				"docker_language_server", -- Docker
				--- Formater ---
				"stylua", -- Lua formating
				"autopep8", -- Python
				"autoflake", -- Python
				"black", -- Python
			},
		},
	},
}
