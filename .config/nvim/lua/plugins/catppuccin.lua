return {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    opts = {
        flavour = "mocha",
        transparent_background = true,
        neotree = true,
        telescope = true,
        treesitter = true,
        highlight_overrides = {
            mocha = function(C)
                return {
                    -- Non-current line numbers (soft white)
                    LineNr = { fg = C.subtext1 },

                    -- Current line number (bright white)
                    CursorLineNr = { fg = C.text, style = { "bold" } },
                }
            end,
        },
    },
    config = function()
        vim.cmd("colorscheme catppuccin")
    end,
}
