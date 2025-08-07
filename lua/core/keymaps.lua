-- TODO Look here https://github.com/hendrikmi/dotfiles/blob/a3cb9521c863e35c94e9d452d43ae1e1a5951cb0/nvim/lua/core/keymaps.lua
-- Try and come up with pain points before adding all the plugins there. Add progressively

-- TIP: Disable arrow keys in normal mode
vim.keymap.set({ "n", "v" }, "<left>", '<cmd>echo "Use h to move left"<CR>')
vim.keymap.set({ "n", "v" }, "<right>", '<cmd>echo "Use l to move right"<CR>')
vim.keymap.set({ "n", "v" }, "<up>", '<cmd>echo "Use k to move up"<CR>')
vim.keymap.set({ "n", "v" }, "<down>", '<cmd>echo "Use j to move down"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Git Blame
vim.keymap.set("n", "<leader>gb", ":BlameToggle window<CR>", { desc = "Toggle git blame window" })

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
