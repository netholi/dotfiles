


vim.pack.add({
  {
    src = "https://github.com/echasnovski/mini.completion",
  },
})

require("mini.completion").setup({
  delay = {
    completion = 100,
    info = 100,
    signature = 50,
  },

  lsp_completion = {
    source_func = "omnifunc",
    auto_setup = true,
  },

  window = {
    info = {
      border = "rounded",
    },

    signature = {
      border = "rounded",
    },
  },
})

vim.opt.completeopt = "menu,menuone,noinsert,fuzzy,popup"




