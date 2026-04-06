return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        enable = true,
		priority = 1000, -- Ensure it loads first
        config = false,
        opts = {},
    },
    {
        'rebelot/kanagawa.nvim',
		enabled = false,
		version = "*",
        dependencies = false,
        lazy = true,
        opts={},
    },
}
