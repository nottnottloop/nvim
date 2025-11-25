-- Define a global toggle variable
vim.g.autosave_enabled = false

-- Function to toggle it
function Autosave()
	vim.g.autosave_enabled = not vim.g.autosave_enabled
	if vim.g.autosave_enabled then
		print("Autosave is on")
	else
		print("Autosave is off")
	end
end

vim.api.nvim_create_user_command("Autosave", Autosave, {})

-- Bind it to a key, e.g., <leader>t
-- vim.keymap.set('n', '<leader>t', ToggleMyVar, { desc = "Toggle my variable" })

-- ~/.config/nvim/init.lua or any lua file in your config

vim.api.nvim_create_augroup("autosave", { clear = true })

vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged", "FocusLost" }, {
	group = "autosave",
	pattern = "*",
	callback = function()
		if vim.g.autosave_enabled then
			vim.cmd("silent! write")
		end
	end,
})
