---- Supporting-Functions (start) ----
local keymap = vim.keymap.set

local base_opts = function(description)
	return {
		noremap = true,
		silent = true,
		desc = description or "No Description",
	}
end

local cmd = function(str)
	return "<Cmd>" .. str .. "<CR>"
end
---- Supporting-Functions (end) ----

---- Misc (start) ----
keymap("", "<C-c>", "<Esc><Esc><Esc>", base_opts()) -- Remap CT
keymap("n", "<Esc>", cmd("nohlsearch"), base_opts("switch off highlight from last search"))
keymap("n", "<C-c>", cmd("nohlsearch"), base_opts("switch off highlight from last search"))
-- keymap("v", "<Esc>", "v", base_opts("Makes Control-c quit directly from Visual to Normal mode"))
-- keymap("v", "<C-c>", "v", base_opts("Makes Control-c quit directly from Visual to Normal mode"))
---- Misc (end) ----

---- Visual (start) ----
keymap("v", "<", "<gv", base_opts("Preserve selection while indenting"))
keymap("v", ">", ">gv", base_opts("Preserve selection while indenting"))
keymap("v", "<Esc>", "v", base_opts("Makes Control-c quit directly from Visual to Normal mode"))
keymap("v", "<C-c>", "v", base_opts("Makes Control-c quit directly from Visual to Normal mode"))
keymap("x", "<Esc>", "vv", base_opts("Makes Control-c quit directly from Visual-Block to Normal mode"))
keymap("x", "<C-c>", "vv", base_opts("Makes Control-c quit directly from Visual-Block to Normal mode"))
---- Visual (end) ----

---- LSP-Maps (start) ----
keymap("n", "<leader>l", "", base_opts("LSP operations"))

keymap("n", "<leader>lf", "", base_opts("LSP floater operations"))
keymap("n", "<leader>lfe", vim.diagnostic.open_float, base_opts("Open error floater with full description"))
keymap("n", "<leader>lfh", vim.lsp.buf.hover, base_opts("Open hover floater"))
keymap("n", "<leader>lfs", vim.lsp.buf.signature_help, base_opts("Open signature-help"))

keymap("n", "<leader>lg", "", base_opts("LSP GOTO operations"))
keymap("n", "<leader>lgd", vim.lsp.buf.definition, base_opts("Go to definition"))
keymap("n", "<leader>lgD", vim.lsp.buf.declaration, base_opts("Go to declaration"))
keymap("n", "<leader>lgt", vim.lsp.buf.type_definition, base_opts("Go to type-definition"))

keymap("n", "<leader>ll", "", base_opts("LSP list(telescope) operations"))
keymap("n", "<leader>llr", cmd("Telescope lsp_references"), base_opts("List references"))
keymap("n", "<leader>lld", cmd("Telescope lsp_definitions"), base_opts("List definitions"))
keymap("n", "<leader>llt", cmd("Telescope lsp_type_definitions"), base_opts("List type-definitions"))
keymap("n", "<leader>lls", cmd("Telescope lsp_workspace_symbols"), base_opts("List document-symbols"))

keymap("n", "<leader>ld", cmd("Telescope diagnostics"), base_opts("Open telescope diagnostics"))
keymap("n", "<leader>lr", vim.lsp.buf.rename, base_opts("Rename-symbol"))
keymap("n", "<leader>lbf", vim.lsp.buf.format, base_opts("Format current buffer"))
---- LSP-Maps (end) ----

---- Files (start) ----
keymap("n", "<leader>f", "", base_opts("File operations"))
keymap("n", "<leader>fe", cmd("Lexplore 20"), base_opts("Toggle side-pane file manager"))
keymap("n", "<leader>fs", cmd("Telescope find_files"), base_opts("Search files"))
keymap("n", "<leader>fgs", cmd("Telescope git_files"), base_opts("Search files on Git repo"))
---- Files (end) ----

---- [ Buffers ] (start) ----
keymap("n", "<leader>b", "", base_opts("Buffer operations"))
keymap("n", "<leader>bd", cmd("bd"), base_opts("Delete current buffer"))
keymap("n", "<leader>bn", cmd("BufferLineCycleNext"), base_opts("Cycle to next buffer"))
keymap("n", "<leader>bp", cmd("BufferLineCyclePrev"), base_opts("Cycle to previous buffer"))
keymap("n", "<leader>bw", cmd("w"), base_opts("Save current buffer"))

keymap("n", "<Tab>", cmd("BufferLineCycleNext"), base_opts("Cycle to next buffer"))
keymap("n", "<S-Tab>", cmd("BufferLineCyclePrev"), base_opts("Cycle to previous buffer"))
---- [ Buffers ] (end) ----

---- [ Tabs ] (start) ----
keymap("n", "<leader>t", "", base_opts("Tabs operations"))
keymap("n", "<leader>tt", cmd("tabnew"), base_opts("Open new tab"))
keymap("n", "<leader>tc", cmd("tabclose"), base_opts("Close current tab"))
keymap("n", "<leader>tn", cmd("tabnext"), base_opts("Cycle to next buffer"))
keymap("n", "<leader>tp", cmd("tabprevious"), base_opts("Cycle to previous buffer"))
---- [ Tabs ] (end) ----

---- Windows (start) ----
keymap("n", "<leader>w", "", base_opts("Window operations"))

keymap("n", "<leader>wq", cmd("q"), base_opts("Quit current window"))
keymap("n", "<leader>wx", cmd("wq"), base_opts("Save current buffer & close current window"))

keymap("n", "<leader>ws", "", base_opts("Window split operations"))
keymap("n", "<leader>wsh", cmd("sp"), base_opts("Horizontal split window"))
keymap("n", "<leader>wsv", cmd("vs"), base_opts("Vertical split window"))

keymap("n", "<leader>w", "", base_opts(""))
keymap("n", "<leader>wh", "<C-w>h", base_opts(""))
keymap("n", "<leader>wj", "<C-w>j", base_opts(""))
keymap("n", "<leader>wk", "<C-w>k", base_opts(""))
keymap("n", "<leader>wl", "<C-w>l", base_opts(""))

keymap("n", "<leader>wo", cmd("on"), base_opts("Maximize current window"))
keymap("n", "<C-w>o", cmd("on"), base_opts("Maximize current window"))
---- Windows (end) ----

---- NVIM (start) ----
keymap("n", "<leader>n", "", base_opts("Nvim operations"))
keymap("n", "<leader>nl", "", base_opts("List operation"))
keymap("n", "<leader>nlh", cmd("Telescope help_tags"), base_opts("Open help tags list"))
keymap("n", "<leader>nlk", cmd("Telescope keymaps"), base_opts("Open keymaps list"))
keymap("n", "<leader>nlb", cmd("Telescope buffers"), base_opts("Open buffer list"))
-- TODO: edit keymaps configuration
-- TODO: edit options configuration
---- NVIM (end) ----
