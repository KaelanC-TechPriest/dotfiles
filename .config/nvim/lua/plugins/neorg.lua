return {
    "nvim-neorg/neorg",
    lazy = false,
    version = "*", -- Pin Neorg to the latest stable release
    config = function()
        require("neorg").setup({
            load = {
                ["core.defaults"] = {},
                ["core.concealer"] = {},
                ["core.export"] = {
                    config = {
                        extensions = "all",
                    }
                },
                ["core.export.markdown"] = {},
                ["core.dirman"] = {
                    config = {
                        workspaces = {
                            personal = "~/personal/notes",
                            school = "~/school",
                        },
                        default_workspace = "personal",
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
