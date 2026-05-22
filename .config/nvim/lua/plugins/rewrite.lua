return {
    dir = "~/personal/cs/rewrite",
    name = "rewrite",
    ft = {"markdown", "txt", "norg", "latex", "tex", "typst"},
    config = function()
        local rewrite = require("rewrite")
        vim.keymap.set("n", "<leader>rw", function() rewrite:begin_rewrite() end, {
            desc = "Open rewrite buffer with current sentence"
        })
    end
}
