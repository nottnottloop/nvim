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
      keymaps = {
        -- ["g?"] = { "actions.show_help", mode = "n" },
        -- ["<CR>"] = "actions.select",
        ["<S-v>"] = { "actions.select", opts = { vertical = true } },
        ["<S-h>"] = { "actions.select", opts = { horizontal = true } },
        ["<C-s>"] = {},
        ["<C-h>"] = {},
        ["<C-j>"] = {},
        ["<C-k>"] = {},
        ["<C-l>"] = {},
        -- ["<C-t>"] = { "actions.select", opts = { tab = true } },
        -- ["<C-p>"] = "actions.preview",
        -- ["<C-c>"] = { "actions.close", mode = "n" },
        -- ["<C-l>"] = "actions.refresh",
        -- ["-"] = { "actions.parent", mode = "n" },
        -- ["_"] = { "actions.open_cwd", mode = "n" },
        -- ["`"] = { "actions.cd", mode = "n" },
        -- ["~"] = { "actions.cd", opts = { scope = "tab" }, mode = "n" },
        -- ["gs"] = { "actions.change_sort", mode = "n" },
        -- ["gx"] = "actions.open_external",
        -- ["g."] = { "actions.toggle_hidden", mode = "n" },
        -- ["g\\"] = { "actions.toggle_trash", mode = "n" },
      },
    })
    vim.keymap.set("n", "-", ":Oil<CR>", { desc = "Open parent directory" })
    vim.keymap.set("n", "<leader>-", ":Oil .<CR>", { desc = "Open cwd directory" })
  end,
  lazy = false,
}
