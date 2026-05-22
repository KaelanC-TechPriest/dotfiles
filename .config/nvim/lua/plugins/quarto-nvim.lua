return {
    "quarto-dev/quarto-nvim",
    dependencies = {
        "jmbuhr/otter.nvim",
        "nvim-treesitter/nvim-treesitter",
    },
    config = function()
        require('quarto').setup{
            debug = false,
            closePreviewOnExit = true,
            lspFeatures = {
                enabled = true,
                chunks = "curly",
                languages = { "r", "python", "julia", "html" },
                diagnostics = {
                    enabled = true,
                    triggers = { "BufWritePost" },
                },
                completion = {
                    enabled = true,
                },
            },
            codeRunner = {
                enabled = true,
                default_method = "molten", -- "molten", "slime", "iron" or <function>
                ft_runners = { python="molten" }, -- filetype to runner, ie. `{ python = "molten" }`.
                -- Takes precedence over `default_method`
                never_run = { 'yaml' }, -- filetypes which are never sent to a code runner
            },
        }
        local runner = require("quarto.runner")
        vim.keymap.set("n", "<localleader>qrc", runner.run_cell,  { desc = "run cell", silent = true })
        vim.keymap.set("n", "<localleader>qra", runner.run_above, { desc = "run cell and above", silent = true })
        vim.keymap.set("n", "<localleader>qrl", runner.run_line,  { desc = "run line", silent = true })
        vim.keymap.set("v", "<localleader>qr",  runner.run_range, { desc = "run visual range", silent = true })
    end
}
