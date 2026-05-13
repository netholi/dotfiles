



return {
  "neovim/nvim-lspconfig",

  config = function()
    vim.lsp.enable("ts_ls")
    vim.lsp.enable("html")
    vim.lsp.enable("cssls")
    vim.lsp.enable("jsonls")
  end,
}
