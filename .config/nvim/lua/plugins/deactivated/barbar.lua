return {
	'romgrk/barbar.nvim',
	enabled = true,
	version = '^1.0.0', -- optional: only update when a new 1.x version is released
	dependencies = {
		'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
		'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
	},
	opts = {
		-- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
		-- animation = true,
		-- insert_at_start = true,
		-- …etc.
	},
	init = function() vim.g.barbar_auto_setup = false end,
}
