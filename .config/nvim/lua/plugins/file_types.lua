return {
	{ -- "tadmccorkle/markdown.nvim",
		"tadmccorkle/markdown.nvim",
		enabled = false,
		ft = "markdown", -- or "event = "VeryLazy""
		opts = {},
	},
	{ -- "yousefhadder/markdown-plus.nvim",
		"yousefhadder/markdown-plus.nvim",
		ft = "markdown",
		opts = {
			keymaps = {
				enabled = true, -- master toggle for default markdown-plus keymaps
			},
			table = {
				keymaps = {
					enabled = true, -- table feature keymaps
				},
			},
		},
	},
	{ -- "MeanderingProgrammer/render-markdown.nvim"
		"MeanderingProgrammer/render-markdown.nvim",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-tree/nvim-web-devicons",
		},
		---@module "render-markdown"
		---@type render.md.UserConfig
		opts = {
			completions = {
				coq = {
					enabled = true,
				},
			},
		},
	},
	{ -- "roodolv/markdown-toggle.nvim",
		"roodolv/markdown-toggle.nvim",
		-- config = function()
		--  require("markdown-toggle").setup({})
		-- end,
		opts = {},
	},
	{ -- "kevalin/mermaid.nvim",
		"kevalin/mermaid.nvim",
		opts = {},
	},
}
