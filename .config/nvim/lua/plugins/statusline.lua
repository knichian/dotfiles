return {
	{
		"nvim-lualine/lualine.nvim",
		enabled = true,
		lazy = false,
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			options = {
				section_separators = {
					left = "",
					right = "",
				},
				component_separators = {
					left = "|",
					right = "|",
				},
				sections = {
					lualine_a = { "mode" },
					lualine_b = { "branch", "diff", "diagnostics" },
					lualine_c = { "filename" },
					lualine_x = { "lsp_status", "fileformat", "filetype" },
					lualine_y = { "progress" },
					lualine_z = { "location" },
				},
			},
		},
	},
}
