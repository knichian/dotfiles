vim.lsp.config["lua_ls"] = {
	settings = {
		Lua = {
			diagnostics = {
				globals = {
					"vim",
				},
			},
			runtime = {
				version = "LuaJIT",
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true), -- add Neovim runtime
				checkThirdParty = false, -- optional: disables annoying prompts
			},
		},
	},
}
vim.lsp.enable("lua_ls")
