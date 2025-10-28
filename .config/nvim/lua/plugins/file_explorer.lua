return {
	{
		"nvim-tree/nvim-tree.lua",
		enabled = false,
		lazy = false,
		dependencies = {
			'nvim-tree/nvim-web-devicons',
		},
		config = function()
			require("nvim-tree").setup({
				on_attach = function()
					-- local api = require('nvim-tree.api')
					vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
				end,
			})
		end
	},
	{
		'stevearc/oil.nvim',
		enabled = false,
		lazy = false,
		dependencies = {
			{
				"nvim-mini/mini.icons",
				opts = {},
			}
		},
		---@module 'oil'
		---@type oil.SetupOpts
		opts = {},
	},
}
