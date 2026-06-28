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
	{ -- "obsidian-nvim/obsidian.nvim",
		"obsidian-nvim/obsidian.nvim",
		version = "*", -- use latest release, remove to use latest commit
		---@module 'obsidian'
		---@type obsidian.config
		opts = {
			legacy_commands = false, -- this will be removed in 4.0.0
			workspaces = {
				-- {
				-- 	name = "personal",
				-- 	path = "~/vaults/personal",
				-- },
				-- {
				-- 	name = "work",
				-- 	path = "~/vaults/work",
				-- },
			},
		},
	},
	{ -- "kevalin/mermaid.nvim",
		"kevalin/mermaid.nvim",
		opts = {},
	},
}
