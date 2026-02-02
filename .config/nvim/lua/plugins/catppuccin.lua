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
                    --  line numbers
                    LineNr = { fg = C.subtext1 },
                    LineNrAbove = { fg = C.subtext1 },
                    LineNrBelow = { fg = C.subtext1 },
                    CursorLineNr = { fg = C.text, style = { "bold" } },
                    --  force transparency in common groups
                    Normal = { bg = "NONE" },
                    NormalNC = { bg = "NONE" },
                    NormalFloat = { bg = "NONE" },
                    FloatBorder = { bg = "NONE" },
                    SignColumn = { bg = "NONE" },
                    EndOfBuffer = { bg = "NONE" },
                    --  sidebars (Neo-tree, etc.)
                    NeoTreeNormal = { bg = "NONE" },
                    NeoTreeNormalNC = { bg = "NONE" },
                    NeoTreeEndOfBuffer = { bg = "NONE" },
                }
            end,
        },
    },
    config = function(_, opts)
        require("catppuccin").setup(opts)
        vim.cmd.colorscheme("catppuccin")
    end,
}
