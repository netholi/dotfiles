-- ~/.config/nvim/lua/config/autocmds.lua

local autocmd = vim.api.nvim_create_autocmd

-- highlight after yank
autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank()
  end,
})
