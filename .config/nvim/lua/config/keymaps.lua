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
keymap("", "<C-c>", "<Esc><Esc>", base_opts())      -- Remap CTRL-c to ESC on all modes
keymap("", "<Esc>", cmd("nohlsearch"), base_opts("switch off highlight from last search")) -- switch off highlight from last search
keymap("", "<C-c>", cmd("nohlsearch"), base_opts("switch off highlight from last search")) -- switch off highlight from last search
--- All-Modes (end) ---

--- Normal (start) ---
keymap("n", "<C-w>o", cmd("only"), base_opts("Makes the current focussed window the only window")) -- Makes the current focussed pane the only pane
--- Normal (end) ---

--- Visual (start) ---
keymap("v", "<", "<gv", base_opts())   -- Preserve selection while indenting
keymap("v", ">", ">gv", base_opts())   -- Preserve selection while indenting
keymap("v", "<Esc>", "v", base_opts()) -- Makes Control-c quit directly to Normal mode
keymap("v", "<C-c>", "v", base_opts()) -- Makes Control-c quit directly to Normal mode
--- Visual (end) ---

--- Insert (start) ---
keymap("i", "<C-c>", "<Esc><Esc>", base_opts()) -- Makes Control-c quit directly to Normal mode
--- Insert (end) ---

--- LSP-Maps (start) ---
keymap("n", "<leader>lbf", vim.lsp.buf.format, base_opts("format current buffer"))
keymap("n", "<leader>lgd", vim.lsp.buf.definition, base_opts("go to definition"))
keymap("n", "<leader>lof", vim.diagnostic.open_float, base_opts("open floating window with full error description"))
keymap("n", "<leader>lrs", vim.lsp.buf.rename, base_opts("rename-symbol"))
keymap("n", "<leader>lsh", vim.lsp.buf.signature_help, base_opts("rename-symbol"))
keymap("n", "<leader>ltd", cmd("Telescope diagnostics"), base_opts('open diagnostics'))
--- LSP-Maps (end) ---

--- Files (start) ---
keymap("n", "<leader>fe", cmd("Lexplore 20"), base_opts("Toggle quick file manager"))      -- Toggle quick file manager
keymap("n", "<leader>fs", cmd("Telescope find_files"), base_opts("Open File Fuzzyfinder")) -- Open File Fuzzyfinder
keymap("n", "<leader>fw", cmd("write"), base_opts("Open File Fuzzyfinder"))                -- Open File Fuzzyfinder
--- Files (end) ---

--- [ Tabs | Buffers ] (start) ---
keymap("n", "<leader>bd", cmd("bdelete"), base_opts("Close current buffer"))                  -- Close current buffer
keymap("n", "<leader>bn", cmd("BufferLineCycleNext"), base_opts("Cycle to next buffer")) -- Cycle buffer forth
keymap("n", "<leader>bp", cmd("BufferLineCyclePrev"), base_opts("Cycle to previous buffer")) -- Cycle buffer back
keymap("n", "<leader>bw", cmd("write"), base_opts("Save current buffer"))  -- Save buffer
keymap("n", "<Tab>", cmd("BufferLineCycleNext"), base_opts("Cycle to next buffer"))      -- Cycle buffer forth
keymap("n", "<S-Tab>", cmd("BufferLineCyclePrev"), base_opts("Cycle to previous buffer"))    -- Cycle buffer back
--- [ Tabs | Buffers ] (end) ---
