-- ~/.config/nvim/lua/config/keymaps.lua

local keymap = vim.keymap

keymap.set("n", "<leader>w", "<cmd>w<cr>")
keymap.set("n", "<leader>q", "<cmd>q<cr>")

-- window movement
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-l>", "<C-w>l")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")

-- neo-tree
keymap.set("n", "<leader>e", ":Neotree toggle filesystem reveal left<CR>")



-- completion navigation
vim.keymap.set("i", "<C-j>", function()
  if vim.fn.pumvisible() == 1 then
    return "<C-n>"
  end
  return "<C-j>"
end, { expr = true })

vim.keymap.set("i", "<C-k>", function()
  if vim.fn.pumvisible() == 1 then
    return "<C-p>"
  end
  return "<C-k>"
end, { expr = true })


vim.keymap.set("x", "<leader>p", '"_dP', { desc = "Paste without yanking" })
vim.keymap.set({ "n", "v" }, "<leader>x", '"_d', { desc = "Delete without yanking" })
