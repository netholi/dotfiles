return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",   -- 👈 IMPORTANT
  build = ":TSUpdate",
  lazy = false,
  config = function()
    require('nvim-treesitter').setup({
      ensure_installed = {
        "bash", "c", "cpp", "lua", "python",
      },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
