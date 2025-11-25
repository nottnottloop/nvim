return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {},
	-- Optional dependencies
	dependencies = { { "nvim-mini/mini.icons", opts = {} } },
	-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
	-- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
	config = function()
		require("oil").setup({
			default_file_explorer = true,
		})
		vim.keymap.set("n", "-", ":Oil<CR>", { desc = "Open parent directory" })
		vim.keymap.set("n", "<leader>-", ":Oil .<CR>", { desc = "Open cwd directory" })
	end,
	lazy = false,
}
