return {
    "obsidian-nvim/obsidian.nvim",
    version = "*", -- use latest release, remove to use latest commit
    lazy = true,
    ft = "markdown",
    ---@module 'obsidian'
    ---@type obsidian.config
    opts = {
        legacy_commands = false, -- this will be removed in 4.0.0
        ui = {
            ignore_conceal_warn = true
        },
        workspaces = {
            {
                name = "personal",
                path = "~/personal/notes",
            },
            {
                name = "poster",
                path = "~/work/johnson-lab/poster-session",
            },
            {
                name = "school",
                path = "~/school",
            },
        },
    },
    keys = {
        { "<leader>ot", "<cmd>Obsidian tags<cr>", desc = "Obsidian Tags" },
        { "<leader>on", "<cmd>Obsidian new<cr>", desc = "Obsidian New Note" },
        { "<leader>om", "<cmd>Obsidian new-from-template<cr>", desc = "Obsidian New from Template" },
        { "<leader>ob", "<cmd>Obsidian backlinks<cr>", desc = "Obsidian Backlinks" },
        { "<leader>oo", "<cmd>Obsidian open<cr>", desc = "Obsidian Open" },
        { "<leader>oc", "<cmd>Obsidian toc<cr>", desc = "Obsidian ToC" },
        { "<leader>or", "<cmd>Obsidian rename<cr>", desc = "Obsidian Rename" },
    },
}
