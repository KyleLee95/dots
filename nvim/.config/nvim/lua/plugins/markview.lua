return {
	"OXY2DEV/markview.nvim",
	lazy = false, -- Recommended
	-- ft = "markdown" -- If you decide to lazy-load anyway

	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		local markview = require("markview")
		markview.setup({
			hybrid_modes = { "n" },
			callbacks = {
				on_enable = function(_, win)
					vim.wo[win].conceal = 2
					vim.wo[win].concealcursor = "c"
				end,
			},
		})
	end,
}
