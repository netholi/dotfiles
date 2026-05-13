return {
  "nvim-treesitter/nvim-treesitter",

  commit = "42fc28ba918343ebfd5565147a42a26580579482",

  build = ":TSUpdate",

  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "lua",
        "vim",
        "bash",
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
      },

      highlight = {
        enable = true,
      },

      indent = {
        enable = true,
      },
    })
  end,
}
