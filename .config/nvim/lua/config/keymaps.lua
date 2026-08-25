-- both of these are mapped in config/lazy.lua
vim.g.mapleader = " "
vim.g.maplocalleader = " "
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
vim.keymap.set("x", "<leader>p", '"_dP')

-- copies to system clipboard
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

-- delete without copying to clipboard
vim.keymap.set("n", "<leader>d", '"_d')
vim.keymap.set("v", "<leader>d", '"_d')

-- this is supposed to stop me from using Q--if it did anything
--vim.keymap.set("n", "Q", "<nop>")

-- hethenism
vim.keymap.set("i", "<C-c>", "<Esc>")

-- "quick fix navigation"
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz", { desc = "Next Quick Fix" } )
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz", { desc = "Previous Quick Fix" } )
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", { desc = "Next Quick Fix" } )
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz", { desc = "Previous Quick Fix" } )

vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

vim.keymap.set("n", "<leader>h", "<C-w>h", { desc = "Focus window left" })
vim.keymap.set("n", "<leader>l", "<C-w>l", { desc = "Focus window right" })
-- vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Focus window down" })
-- vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Focus window up" })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
