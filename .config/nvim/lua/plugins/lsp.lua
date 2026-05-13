-- ~/.config/nvim/lua/plugins/lsp.lua

vim.pack.add({
  {
    src = "https://github.com/neovim/nvim-lspconfig",
  },

})

local function packadd(name)
vim.cmd("packadd " .. name)
end
packadd("nvim-lspconfig")


vim.lsp.enable({
  "ts_ls",
  "html",
  "cssls",
  "jsonls",
})

-- diagnostics UI
vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
})

-- LSP keymaps when attached
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(event)
    local opts = { buffer = event.buf }

    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
    vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
    vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
  end,
})
