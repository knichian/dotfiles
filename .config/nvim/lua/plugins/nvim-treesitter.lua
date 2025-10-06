return {
	"nvim-treesitter/nvim-treesitter",
	enabled = true,
	branch = 'master',
	lazy = false,
	build = ":TSUpdate",
	opts = {
		ensure_installed = {
			-- programing
			"c",
			"cpp",
			"c#",
			"java",
			"kotlin",
			"go",
			"rust",
			"elixir",
			"x86asm",
			-- build-systems
			"make",
			"ninja",
			"cmake",
			"mason",
			-- scripting
			"python",
			"lua",
			"julia",
			-- web
			"html",
			"css",
			"javascript",
			"typescript",
			"tsx",
			-- network:
			"http",
			-- templating
			"jinja2",
			-- embedded systems
			"arduino",
			-- query:
			"sql",
			"sqlite",
			"awk",
			-- gpu programing
			"glsl",
			"cuda",
			"wgsl",
			-- Document-Making: (?)
			"markdown",
			"markdown_inline",
			"latex",
			"bibtex",
			-- Serialization: (?)
			"csv",
			"xml",
			"json",
			"json5",
			"yaml",
			"toml",
			-- configuration:
			"desktop",
			"nginx",
			"dockerfile",
			-- documentation:
			"doxygen",
		},
	},
}
