-- ~/.config/nvim/lua/config/options.lua

vim.g.mapleader = " "

local opt = vim.opt

opt.number = true
opt.relativenumber = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true

opt.wrap = false

opt.ignorecase = true
opt.smartcase = true

opt.termguicolors = true
opt.signcolumn = "yes"

opt.updatetime = 250

opt.splitright = true
opt.splitbelow = true

opt.clipboard = "unnamedplus"
