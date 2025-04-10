vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- allows J and K to move selected portions of text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keeps curser in the same place when J
vim.keymap.set("n", "J", "mzJ`z")

-- keeps curser in the middle of the screen
--      for half-page jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
--
--      when going through search terms
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- gives an option for replace-pasting without loosing clipboard
vim.keymap.set("x", "<leader>p", "\"_dp")

-- copies to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- delete without copying to clipboard
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- this is supposed to stop me from using Q--if it did anything
--vim.keymap.set("n", "Q", "<nop>")

-- hethenism
vim.keymap.set("i", "<C-c>", "<Esc>")

-- this uses tmux, which I don't have at this time
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- "quick fix navigation"
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- moving between windows
--vim.keymap.set("n", "<leader>h", "<C-w>h")
--vim.keymap.set("n", "<leader>j", "<C-w>j")
--vim.keymap.set("n", "<leader>k", "<C-w>k")
--vim.keymap.set("n", "<leader>l", "<C-w>l")

--false vim.api.nvim_create_user_command('PeekOpen', require('peek').open, {})
