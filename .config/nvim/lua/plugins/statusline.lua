return {
	{
		'nvim-lualine/lualine.nvim',
		enabled = true,
		lazy = false,
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		opts = {
        options = {
            section_separators = { left = '', right = '' },
            component_separators = { left = '', right = '' },
        },
    },
	},
	{
		'echasnovski/mini.statusline',
		enabled = false,
		lazy = false,
		version = false,
		opts = {},
	},
}
