return {
	dir = "~/dev/harbor",
	dev = true,
	lazy = false,
	config = function()
		-- require("harbor").setup({})
		vim.cmd("colorscheme harbor")
	end,
}
