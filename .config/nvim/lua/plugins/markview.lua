return {
    "OXY2DEV/markview.nvim",
    lazy = false,
    -- Completion for `blink.cmp`
    -- dependencies = { "saghen/blink.cmp" },
    config = function()
        require("markview").setup({
            preview = {
                -- modes = { "n", "c", "i", "v" },
                hybrid_modes = { "n" },
                linewise_hybrid_mode = true,
            },
            markdown = {
                list_items = {
                    -- Remove virtual indentation for list items
                    -- shift_width = 0,

                    -- Disable padding after the marker (this is what usually creates the indent in preview)
                    marker_minus = { add_padding = false },
                    marker_plus = { add_padding = false },
                    marker_star = { add_padding = false },
                    marker_dot = { add_padding = false },
                    marker_parenthesis = { add_padding = false },
                }
            }
        })
    end
};
