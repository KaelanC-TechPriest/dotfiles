return {
	{
		"EdenEast/nightfox.nvim",
	},
	{
		"folke/tokyonight.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			-- load the colorscheme here
			vim.cmd([[colorscheme tokyonight-night]])
		end,
	},
	{
		"scottmckendry/cyberdream.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("cyberdream").setup({
				-- Set light or dark variant
				variant = "default", -- use "light" for the light variant. Also accepts "auto" to set dark or light colors based on the current value of `vim.o.background`

				-- Reduce the overall saturation of colours for a more muted look
				saturation = 1, -- accepts a value between 0 and 1. 0 will be fully desaturated (greyscale) and 1 will be the full color (default)

				-- Enable italics comments
				italic_comments = true,

				-- Replace all fillchars with ' ' for the ultimate clean look
				hide_fillchars = false,

				-- Apply a modern borderless look to pickers like Telescope, Snacks Picker & Fzf-Lua
				borderless_pickers = false,

				-- Set terminal colors used in `:terminal`
				terminal_colors = true,

				-- Improve start up time by caching highlights. Generate cache with :CyberdreamBuildCache and clear with :CyberdreamClearCache
				cache = false,

				-- Disable or enable colorscheme extensions
				extensions = {
					telescope = true,
				},
			})
			--vim.cmd([[colorscheme cyberdream]])
		end,
	},
	{
		"datsfilipe/vesper.nvim",
	},
	--	{
	--		"sainnhe/gruvbox-material",
	--		lazy = true,
	--		priority = 60,
	--		config = function()
	--			-- Optionally configure and load the colorscheme
	--			-- directly inside the plugin declaration.
	--			vim.g.gruvbox_material_enable_italic = true
	--			--vim.cmd.colorscheme("gruvbox-material")
	--		end,
	--	},
}
