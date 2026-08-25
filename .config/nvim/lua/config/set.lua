vim.opt.guicursor = "" -- extra thicc cursor

-- Appearance
vim.g.have_nerd_font = true
vim.opt_local.conceallevel = 2
vim.opt.conceallevel = 2
vim.opt.concealcursor = "c"

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
-- vim.opt.tabstop = 4
-- vim.opt.softtabstop = 0
-- vim.opt.shiftwidth = 4
-- vim.opt.expandtab = false -- replace tabs with spaces
-- vim.opt.smartindent = true

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
vim.o.termguicolors = true
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
-- vim.o.formatoptions = "cjlq"

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

-- thank you (https://youtu.be/f_f08KnAJOQ?si=80GBuGrzvmsGMTqo)
vim.opt.foldmethod = "marker"
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

-- vim.cmd [[
--   highlight Normal guibg=NONE ctermbg=NONE
--   highlight NonText guibg=NONE ctermbg=NONE
--   highlight EndOfBuffer guibg=NONE ctermbg=NONE
-- ]]

-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "norg,latex,tex,typst",
--   callback = function()
--         vim.o.formatoptions = "cjqt"
--         vim.o.textwidth = 80
--   end,
-- })
