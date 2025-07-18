vim.opt.guicursor = "" -- extra thicc cursor

vim.g.have_nerd_font = true

-- Line numbers
vim.wo.number = true
vim.opt.number = true
vim.opt.relativenumber = true

-- Enable mouse mode
vim.o.mouse = "a"

-- Enable break indent
vim.o.breakindent = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Indenting
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true -- replace tabs with spaces
vim.opt.smartindent = true

-- wrap lines
vim.opt.wrap = true

-- undo history
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- highlight search and incremental highlight search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- colors
vim.opt.termguicolors = true
vim.o.background = "dark"

-- keeps 8 lines above and below cursor
vim.opt.scrolloff = 10

-- gives a column for lsp warnings/errors/etc
vim.opt.signcolumn = "yes"

vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

-- Decrease mapped sequence wait time
vim.opt.timeoutlen = 300

-- Set completeopt to have a better completion experience
-- vim.o.completeopt = 'menuone,noselect'

vim.opt.colorcolumn = "80"

vim.g.netrw_liststyle = 0
vim.g.netrw_banner = 0

vim.o.linebreak = true

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = "┊ ", trail = "·", nbsp = "␣" }

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

-- Show which line your cursor is on
vim.opt.cursorline = true

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
-- See `:help 'confirm'`
vim.opt.confirm = true

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

function _G.custom_fold_text()
	local line = vim.fn.getline(vim.v.foldstart)

	local line_count = vim.v.foldend - vim.v.foldstart + 1

	return line .. " | " .. line_count .. " lines"
end

vim.opt.foldtext = "v:lua.custom_fold_text()"
--
-- thank you (https://youtu.be/f_f08KnAJOQ?si=80GBuGrzvmsGMTqo)
--vim.opt.foldmethod = "expr"
--vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
--vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"

vim.api.nvim_create_user_command("Cmpoff", function(opts)
	require("cmp").setup({ enabled = false })
end, { nargs = "*", desc = "Turn completion off" })

vim.api.nvim_create_user_command("Cmpon", function(opts)
	require("cmp").setup({ enabled = true })
end, { nargs = "*", desc = "Turn completion off" })

-- align table
vim.api.nvim_create_user_command("FormatTable", function(opts)
	vim.cmd(string.format('%d,%d!column -t -s "|" -o "|" ', opts.line1, opts.line2))
end, { range = true, desc = "Format a visualy selected table" })

vim.o.termguicolors = true
vim.cmd [[
  highlight Normal guibg=NONE ctermbg=NONE
  highlight NonText guibg=NONE ctermbg=NONE
  highlight EndOfBuffer guibg=NONE ctermbg=NONE
]]
