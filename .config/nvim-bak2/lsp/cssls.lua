-- ~/.config/nvim/lsp/cssls.lua

return {
  cmd = { "vscode-css-language-server", "--stdio" },

  filetypes = {
    "css",
    "scss",
    "less",
  },

  root_markers = {
    ".git",
  },
}
