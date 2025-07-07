return {
	"d7omdev/nuget.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		require("nuget").setup()
	end,
}
