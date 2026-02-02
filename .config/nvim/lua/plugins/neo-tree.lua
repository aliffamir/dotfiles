return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			filesystem = {
				filtered_items = {
					visible = true,
					show_hidden_count = true,
					hide_dotfiles = false,
					hide_gitignored = false,
					hide_by_name = {
						".git",
						".DS_Store",
					},
					never_show = {},
				},
			},
		})

		-- Transparent Neo-tree
		vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "none" })
		vim.api.nvim_set_hl(0, "NeoTreeEndOfBuffer", { bg = "none" })
		vim.api.nvim_set_hl(0, "NeoTreeWinSeparator", { bg = "none" }) -- optional

		vim.keymap.set("n", "<C-m>", "<Cmd>Neotree toggle<CR>")
		vim.keymap.set("n", "<C-n>", "<Cmd>Neotree filesystem reveal left<CR>")
	end,
}
