-- ~/.config/nvim/lsp/html.lua

return {
  cmd = { "vscode-html-language-server", "--stdio" },

  filetypes = {
    "html",
  },

  root_markers = {
    ".git",
  },
}
