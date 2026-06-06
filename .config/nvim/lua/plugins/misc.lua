return {
	{ -- "numToStr/Comment.nvim",
		"numToStr/Comment.nvim",
		opts = {},
	},

	{ -- "lukas-reineke/indent-blankline.nvim",
		"lukas-reineke/indent-blankline.nvim",
		enable = true,
		main = "ibl",
		---@module "ibl"
		---@type ibl.config
		opts = {},
	},

	{ -- "sei40kr/nvimacs",
		"sei40kr/nvimacs",
		enabled = true,
		lazy = false,
		event = { "InsertEnter *", "CmdlineEnter *" },
		config = function() end,
		opts = {},
	},

	{ -- "windwp/nvim-autopairs",
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {},
	},

	{ -- "nvzone/showkeys",
		"nvzone/showkeys",
		enable = true,
		lazy = true,
		cmd = "ShowkeysToggle",
		opts = {
			timeout = 1,
			maxkeys = 5,
			-- more opts
		},
	},

	{ -- "kylechui/nvim-surround",
		"kylechui/nvim-surround",
		enable = true,
		-- lazy = "VeryLazy",
		event = "VeryLazy",
		opts = {},
	},

	{ -- "mcauley-penney/visual-whitespace.nvim",
		"mcauley-penney/visual-whitespace.nvim",
		config = true,
		event = "ModeChanged *:[vV\22]", -- optionally, lazy load on entering visual mode
		opts = {
			enabled = true,
			highlight = {
				link = "Visual",
				default = true,
			},
			match_types = {
				space = true,
				tab = true,
				nbsp = true,
				lead = false,
				trail = false,
			},
			list_chars = {
				space = "·",
				tab = "↦",
				nbsp = "␣",
				lead = "‹",
				trail = "›",
			},
			fileformat_chars = {
				unix = "↲",
				mac = "←",
				dos = "↙",
			},
			ignore = { filetypes = {}, buftypes = {} },
		},
	},

	{ -- "folke/which-key.nvim",
		"folke/which-key.nvim",
		event = "VeryLazy",
		dependencies = {
			"nvim-mini/mini.icons",
		},
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},
	},

	{ -- "m4xshen/hardtime.nvim",
		"m4xshen/hardtime.nvim",
        enabled = false,
		lazy = false,
		dependencies = { "MunifTanjim/nui.nvim" },
		opts = {},
	},

	{ -- "tris203/precognition.nvim",
		"tris203/precognition.nvim",
        enabled = false,
		event = "VeryLazy",
		opts = {
			-- startVisible = true,
			-- debounceMs = 0,
			-- showBlankVirtLine = true,
			-- highlightFullVirtLine = false,
			-- highlightColor = { link = "Comment" },
			-- targetedMotionHighlightColor = { link = "PrecognitionTargetedMotionDefault" },
			-- textObjectHighlightColors = {
			--     { link = "DiffText" },
			--     { link = "DiffChange" },
			--     { link = "Visual" },
			-- },
			-- targetedMotionHints = {
			--     enabled = true,
			--     prio = 1,
			-- },
			-- hints = {
			--      Caret = { text = "^", prio = 2 },
			--      Dollar = { text = "$", prio = 1 },
			--      MatchingPair = { text = "%", prio = 5 },
			--      Zero = { text = "0", prio = 1 },
			--      w = { text = "w", prio = 10 },
			--      b = { text = "b", prio = 9 },
			--      e = { text = "e", prio = 8 },
			--      W = { text = "W", prio = 7 },
			--      B = { text = "B", prio = 6 },
			--      E = { text = "E", prio = 5 },
			-- },
			-- gutterHints = {
			--     G = { text = "G", prio = 10 },
			--     gg = { text = "gg", prio = 9 },
			--     PrevParagraph = { text = "{", prio = 8 },
			--     NextParagraph = { text = "}", prio = 8 },
			-- },
			-- disabled_fts = {
			--     "startify",
			-- },
		},
	},
}
