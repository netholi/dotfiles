-- ~/.config/nvim/lua/plugins/neo-tree.lua

vim.pack.add({
  {
    src = "https://github.com/nvim-lua/plenary.nvim",
  },
  {
    src = "https://github.com/MunifTanjim/nui.nvim",
  },
  {
    src = "https://github.com/nvim-tree/nvim-web-devicons",
  },
  {
    src = "https://github.com/nvim-neo-tree/neo-tree.nvim",
  },
})

require("neo-tree").setup({
  close_if_last_window = true,

  filesystem = {
    follow_current_file = {
      enabled = true,
    },

    filtered_items = {
      visible = false,
      hide_dotfiles = false,
      hide_gitignored = true,
    },
  },

  window = {
    width = 30,
  },
})
