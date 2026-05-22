return { 
    "danymat/neogen", 
    version = "*",
    config = function()
        local neogen = require("neogen")

        neogen.setup({
            snippet_engine = "luasnip"
        })

        vim.keymap.set("n", "<leader>ngf", function()
            neogen.generate({ type = "func" })
        end)

        vim.keymap.set("n", "<leader>ngt", function()
            neogen.generate({ type = "type" })
        end)

    end,
}
