
local base_opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

local cmd = function(str)
	return "<Cmd>" .. str .. "<CR>"
end

-- using LSP defaults

-- All-Modes -- 
keymap("", "<C-c>", "<Esc>", base_opts) -- Remap CTRL-c to ESC on all modes
keymap("", "<C-c>", cmd("nohlsearch"), base_opts) -- switch off highlight from last search
keymap("", "<Esc>", cmd("nohlsearch"), base_opts) -- switch off highlight from last search

-- Normal --
keymap("n", "<leader>bd", cmd("bd"), base_opts) -- Close current buffer
keymap("n", "<Tab>", cmd("BufferLineCycleNext"), base_opts) -- Cycle tabs forth
keymap("n", "<S-Tab>", cmd("BufferLineCyclePrev"), base_opts) -- Cycle tabs back
keymap("n", "<C-w>o", cmd("only"), base_opts) -- Makes the current focussed pane the only pane
keymap("n", "<leader>e", cmd("Lexplore 30"), base_opts) -- Toggle quick file manager
keymap("n", "<leader>ff", cmd("Telescope find_files"), base_opts) -- Open File Fuzzyfinder 

-- Visual --
keymap("v", "<", "<gv", base_opts) -- Preserve selection while indenting
keymap("v", "<Esc>", "v", base_opts) -- Makes Control-c quit directly to Normal mode
keymap("v", "<C-c>", "v", base_opts) -- Makes Control-c quit directly to Normal mode

-- Insert -- 
keymap("i", "<C-c>", "<Esc>", base_opts) -- Makes Control-c quit directly to Normal mode

