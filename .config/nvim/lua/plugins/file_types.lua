return {
	{ -- "tadmccorkle/markdown.nvim",
		"tadmccorkle/markdown.nvim",
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
	{ -- "kevalin/mermaid.nvim",
		"kevalin/mermaid.nvim",
		opts = {},
	},
	{
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
}
