return { 
  "catppuccin/nvim", 
  lazy = false, 
  name = "catppuccin", 
  priority = 1001,
  opts = {
    transparent_background = true,
    neotree = true,
    telescope = true,
    treesitter = true,
  },
  config = function()
    vim.cmd.colorscheme "catppuccin"
  end
}
