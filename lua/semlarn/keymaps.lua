-- Keymaps updated 2025-12-03
--
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Open file explorer with e
vim.keymap.set("n", "<leader>e", "<cmd>Ex<CR>", { desc = "Open file [e]xplorer" })

-- mini.files
-- vim.keymap.set("n", "<leader>e", function()
-- 	require("mini.files").open(vim.loop.cwd())
-- end, { desc = "Open file [e]xplorer" })
--
-- -- open files with CR and close file explorer
-- vim.api.nvim_create_autocmd("User", {
-- 	pattern = "MiniFilesBufferCreate",
-- 	callback = function(args)
-- 		vim.keymap.set("n", "<CR>", function()
-- 			require("mini.files").go_in({ close_on_file = true})
-- 		end, { buffer = args.data.buf_id })
-- 	end,
-- })
--
-- -- Backspace to move up one level
-- vim.api.nvim_create_autocmd("User", {
-- 	pattern = "MiniFilesBufferCreate",
-- 	callback = function(args)
-- 		local buf = args.data.buf_id
--
-- 		vim.keymap.set("n", "<BS>", function()
-- 			require("mini.files").go_out()
-- 		end, { buffer = buf, desc = "Go up directory" })
-- 	end,
-- })
--
-- -- Remove trailing whitespace
-- vim.api.nvim_create_autocmd("BufWritePre", {
-- 	callback = function()
-- 		MiniTrailspace.trim()
-- 	end,
-- })

-- Aerial
vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle!<CR>")
