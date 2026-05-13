-- ~/.config/nvim/lsp/jsonls.lua

return {
  cmd = { "vscode-json-language-server", "--stdio" },

  filetypes = {
    "json",
  },

  root_markers = {
    ".git",
  },
}
