return {
	{ -- "neovim/nvim-lspconfig",
		"neovim/nvim-lspconfig",
		enable = true,
		lazy = false,
		dependencies = {},
		config = function()
			return require('lsp')
		end,
		opts = {},
	},
	{ -- "mason-org/mason.nvim"
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
	{ -- "mason-org/mason-lspconfig.nvim",
		"mason-org/mason-lspconfig.nvim",
		enable = true,
		lazy = false,
		dependencies = {
			"mason-org/mason.nvim",
		  "neovim/nvim-lspconfig",
		},
		opts = {
        automatic_enable = false,
    },
	},
	{ -- "WhoIsSethDaniel/mason-tool-installer.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		enable = true,
		lazy = false,
		dependencies = {
			"mason-org/mason-lspconfig.nvim",
      "jay-babu/mason-null-ls.nvim",
      "jay-babu/mason-nvim-dap.nvim",
		},
		opts = {
			ensure_installed = {
				"lua_ls", -- Lua
				"stylua", -- Lua formating
				"pyright", -- Python
        "jedi_language_server", -- Python
				"clangd", -- C/C++
				"rust_analyzer", -- rust
				"ts_ls", -- Typescript
				"cmake-language-server", -- CMake
				"templ", -- Go + HTML
				"systemd-lsp", -- SystemD
				"tectonic", -- LaTeX
			},
		},
	},
}
