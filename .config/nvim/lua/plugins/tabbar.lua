return {
	{
		'romgrk/barbar.nvim',
		enabled = true,
		version = '^1.0.0', -- optional: only update when a new 1.x version is released
		dependencies = {
			'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
			'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
		},
		opts = {
			animation = true,
			insert_at_start = true,
		},
		init = function() 
			vim.g.barbar_auto_setup = false 
		end,
	},
	{
		'akinsho/bufferline.nvim',
		enabled = false,
		lazy = false,
		version = "*",
		dependencies = 'nvim-tree/nvim-web-devicons',
		opts = {
			options = {
				separator_style = 'slant'
			},
		},
	},
}
