return {
	"nvim-neorg/neorg",
	lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
	version = "*", -- Pin Neorg to the latest stable release
	config = function()
		require("neorg").setup({
			load = {
				["core.defaults"] = {},
				["core.concealer"] = {},
				["core.dirman"] = {
					config = {
						workspaces = {
							notes = "~/notes",
							personal = "~/personal",
							school = "~/school",
						},
						default_workspace = "notes",
						vim.keymap.set("n", "<LocalLeader>nn", "<Plug>(neorg.dirman.new-note)"),
					},
				},
				["core.summary"] = {},
			},
			vim.keymap.set("n", "<LocalLeader>nim", ":Neorg inject-metadata<CR>"),
			vim.keymap.set("n", "<LocalLeader>num", ":Neorg update-metadata<CR>"),
			vim.keymap.set("n", "<LocalLeader>ngs", ":Neorg generate-workspace-summary<CR>"),
			vim.keymap.set("n", "<LocalLeader>nt", ":Neorg toc<CR>"),
		})
	end,
}
