vim.g.have_nerd_font = true

vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 8
vim.opt.wrap = true

vim.opt.mouse = "a"
vim.opt.splitright = true
vim.opt.splitbelow = false
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.opt.signcolumn = "yes"
vim.opt.showmode = false

vim.opt.winborder = 'rounded'

--- TAB behavior
vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.smarttab = true

---  
vim.opt.confirm = true

--- folding options
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 4
vim.opt.foldcolumn = "0"
vim.opt.foldtext = ""

