vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set nu")
vim.cmd("set ic")
vim.cmd("set smartcase")
vim.cmd("let matchparen_disable_cursor_hl = 1")

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Comment keybinds
vim.keymap.set("n", "<C-_>", "gcc", { remap = true })
vim.keymap.set("v", "<C-_>", "gc", { remap = true })

-- Window splitting
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- Kill windows
vim.keymap.set("n", "<C-c>", "<C-w>c")

-- Kill everything, having to hit enter for confirmation
vim.keymap.set("n", "<leader>asdf", ":qa!")

-- Save spam
vim.keymap.set("n", "<leader>w", ":wa<CR>")

-- Jump to Neovim config directory
vim.api.nvim_create_user_command("ConfigDir", function()
	vim.cmd("cd " .. vim.fn.stdpath("config"))
end, {})

-- Colorscheme
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.signcolumn = "yes"

-- Split windows
vim.opt.splitright = true
vim.opt.splitbelow = true
