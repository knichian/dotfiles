vim.cmd("set termguicolors")

--- folding options
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 8
vim.opt.foldcolumn = "0"
vim.opt.foldtext = ""
