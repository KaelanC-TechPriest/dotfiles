return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",  -- still the active branch (repo is archived but main works)
    build = ":TSUpdate",
    main = "nvim-treesitter",  -- ← CRITICAL CHANGE (was "nvim-treesitter.configs")
    opts = {
        -- highlight/indent are now just flags; actual enabling happens in init
        highlight = { enable = true },
        indent = { enable = true },
    },
    init = function()
        -- Auto-install your parsers (replaces ensure_installed)
        local ensure_installed = {
            "bash", "c", "diff", "html", "lua", "luadoc", "markdown", "python",
            "query", "r", "rnoweb", "vim", "vimdoc", "yaml", "latex",
        }

        -- Only install missing ones
        local installed = require("nvim-treesitter.config").get_installed() or {}
        local to_install = vim.tbl_filter(function(lang)
            return not vim.tbl_contains(installed, lang)
        end, ensure_installed)

        if #to_install > 0 then
            require("nvim-treesitter").install(to_install)
        end

        -- Enable Treesitter on every file
        vim.api.nvim_create_autocmd("FileType", {
            callback = function()
                pcall(vim.treesitter.start)  -- starts highlighting + disables vim regex
                -- Optional: Treesitter-based indentation
                vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
            end,
        })
    end,
}
