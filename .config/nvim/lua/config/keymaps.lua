
-- local keymap = function(mode, lhs, rhs, opts)
-- 	local base_opts = { noremap = true, silent = true }
-- 	opts = vim.tbl_deep_extend('force', base_opts, opts)
-- 	vim.keymap.set(mode, lhs, rhs, opts)
-- end

local base_opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

-- local cmd = function(str)
-- 	local cmd_str = '<Cmd>' .. str .. '<CR>'
-- 	return cmd_str
-- end

local cmd = function(str)
	return '<Cmd>' .. str .. '<CR>'
end

-- using LSP defaults

-- Normal --
-- Remap CTRL-c to a perfect ESC
keymap('', '<C-c>', '<Esc>', base_opts)

-- File Fuzzyfinder 
keymap('n', '<leader>ff', cmd('Telescope find_files'), base_opts)

-- Visual --
-- Stay in indent mode:
keymap("v", "<", "<gv", base_opts)
keymap("v", ">", ">gv", base_opts)

-- switch off highlight from last search:
keymap("", "<C-c>", cmd('nohlsearch'), base_opts)
keymap("", "<Esc>", cmd('nohlsearch'), base_opts)

-- Cycle tabs back and forth
keymap("n", "<Tab>", cmd("BufferLineCycleNext"), base_opts)
keymap("n", "<S-Tab>", cmd("BufferLineCyclePrev"), base_opts)

-- Close current buffer
keymap('n', '<leader>bd', cmd('bd'), base_opts)

-- Only window
keymap('n', '<C-w>o', cmd('only'), base_opts)

