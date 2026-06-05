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

--- All-Modes (start) ---
keymap("", "<C-c>", "<Esc><Esc>", base_opts())                                             -- Remap CTRL-c to ESC on all modes
keymap("", "<Esc>", cmd("nohlsearch"), base_opts("switch off highlight from last search")) -- switch off highlight from last search
keymap("", "<C-c>", cmd("nohlsearch"), base_opts("switch off highlight from last search")) -- switch off highlight from last search
--- All-Modes (end) ---

--- Normal (start) ---
keymap("n", "<C-w>o", cmd("only"), base_opts("Makes the current focussed window the only window")) -- Makes the current focussed pane the only pane
--- Normal (end) ---

--- Visual (start) ---
keymap("v", "<", "<gv", base_opts("Preserve selection while indenting"))             -- Preserve selection while indenting
keymap("v", ">", ">gv", base_opts("Preserve selection while indenting"))             -- Preserve selection while indenting
keymap("v", "<Esc>", "v", base_opts("Makes Control-c quit directly to Normal mode")) -- Makes Control-c quit directly to Normal mode
keymap("v", "<C-c>", "v", base_opts("Makes Control-c quit directly to Normal mode")) -- Makes Control-c quit directly to Normal mode
--- Visual (end) ---

--- Insert (start) ---
keymap("i", "<C-c>", "<Esc><Esc>", base_opts()) -- Makes Control-c quit directly to Normal mode
--- Insert (end) ---

--- LSP-Maps (start) ---
keymap("n", "<leader>l", "", base_opts("LSP related commands"))
keymap("n", "<leader>lbf", vim.lsp.buf.format, base_opts("Format current buffer"))
keymap("n", "<leader>ld", cmd("Telescope diagnostics"), base_opts('Open telescope diagnostics'))
keymap("n", "<leader>lgd", vim.lsp.buf.definition, base_opts("Go to definition"))
keymap("n", "<leader>lof", vim.diagnostic.open_float, base_opts("Open floating window with full error description"))
keymap("n", "<leader>lrs", vim.lsp.buf.rename, base_opts("Rename-symbol"))
keymap("n", "<leader>lsh", vim.lsp.buf.signature_help, base_opts("Open signature-help"))
keymap("n", "<leader>ltd", vim.lsp.buf.type_definition, base_opts("Go to type-definition"))
--- LSP-Maps (end) ---

--- Files (start) ---
keymap("n", "<leader>f", "", base_opts("File related commands"))
keymap("n", "<leader>fe", cmd("Lexplore 20"), base_opts("Toggle quick file manager")) -- Toggle quick file manager
keymap("n", "<leader>fs", cmd("Telescope find_files"), base_opts("Search files"))     -- Search files
keymap("n", "<leader>fgs", cmd("Telescope git_files"), base_opts("Search files on Git repo"))     -- Search files
--- Files (end) ---

--- [ Tabs | Buffers ] (start) ---
keymap("n", "<leader>b", "", base_opts("Buffer related commands"))
keymap("n", "<leader>bd", cmd("bd"), base_opts("Close current buffer"))                      -- Close current buffer
keymap("n", "<leader>bn", cmd("BufferLineCycleNext"), base_opts("Cycle to next buffer"))     -- Cycle buffer forth
keymap("n", "<leader>bp", cmd("BufferLineCyclePrev"), base_opts("Cycle to previous buffer")) -- Cycle buffer back
keymap("n", "<leader>bw", cmd("w"), base_opts("Save current buffer"))                        -- Save buffer
keymap("n", "<Tab>", cmd("BufferLineCycleNext"), base_opts("Cycle to next buffer"))          -- Cycle buffer forth
keymap("n", "<S-Tab>", cmd("BufferLineCyclePrev"), base_opts("Cycle to previous buffer"))    -- Cycle buffer back
--- [ Tabs | Buffers ] (end) ---

--- Windows (start)
keymap("n", "<leader>w", "", base_opts("Window related commands"))
keymap("n", "<leader>wsv", cmd("sp"), base_opts("Horizontal split window"))
keymap("n", "<leader>wsh", cmd("vs"), base_opts("Vertical split window"))
keymap("n", "<leader>wo", cmd("on"), base_opts("Maximize current window"))
--- Windows (end)

