-- local base_opts = { noremap = true, silent = true }

local keymap = function(mode, lhs, rhs, opts)
	local base_opts = { noremap = true, silent = true }
	opts = vim.tbl_deep_extend('force', base_opts, opts)
	vim.keymap.set(mode, lhs, rhs, opts)
end


local cmd = function(str)
	local cmd_str = '<Cmd>' .. str .. '<CR>'
	return cmd_str
end


-- Normal --
-- Remap CTRL-c to a perfect ESC
keymap('', '<C-c>', '<Esc>', {})
keymap('n', '<C-c>', '<Esc>', {})
keymap('v', '<C-c>', '<Esc>', {})
keymap('i', '<C-c>', '<Esc>', {})

-- Lsp Features
keymap('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
keymap('n', '<leader>df', vim.diagnostic.open_float, {})
keymap('n', '<leader>dl', cmd('Telescope diagnostics'), {})

-- File Fuzzyfinder 
keymap('n', '<leader>ff', cmd('Telescope find_files'), {})

-- Visual --
-- Stay in indent mode:
keymap("v", "<", "<gv", {})
keymap("v", ">", ">gv", {})

-- switch off highlight from last search:
keymap("", "<C-c>", cmd('nohlsearch'), {})
keymap("", "<Esc>", cmd('nohlsearch'), {})

-- Cycle buffers back and forth
keymap("", "<Tab>", cmd("bn"), {})
keymap("", "<S-Tab>", cmd('bp'), {})

-- Close current buffer
keymap('n', '<leader>bd', cmd('bd'), {})

-- Only window
keymap('n', '<C-w>o', cmd('only'), {})
