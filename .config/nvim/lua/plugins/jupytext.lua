return {
    "GCBallesteros/jupytext.nvim",
    lazy = false,
    -- ft = { "json" }, -- pointless, it loads on anything
    opts = {
        custom_language_formatting = {
            python = {
                extension = "md",
                style = "markdown",
                force_ft = "markdown", -- you can set whatever filetype you want here
            },
        }
    }
}
