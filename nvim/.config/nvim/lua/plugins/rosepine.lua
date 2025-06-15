return {
  "rose-pine/neovim",
	name = "rose-pine",
  lazy = false,
  priority = 1000,
  opts = {
    transparent_background = true,
    neotree = true,
    telescope = true,
    treesitter = true,
  },
	config = function()
		vim.cmd("colorscheme rose-pine")
  end
}
