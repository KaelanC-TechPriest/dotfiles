return {
	"Thiago4532/mdmath.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
	},
	opts = {
		-- Filetypes that the plugin will be enabled by default.
		filetypes = {},
		-- Enable dynamic size for non-inline equations.
		dynamic = true,
		-- Configure the scale of dynamic-rendered equations.
		dynamic_scale = 0.75,
	},

	-- The build is already done by default in lazy.nvim, so you don't need
	-- the next line, but you can use the command `:MdMath build` to rebuild
	-- if the build fails for some reason.
	-- build = ':MdMath build'
}
