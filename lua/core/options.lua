-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Clipboard
-- vim.opt.clipboard:append("unnamedplus")

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- n — нормальный
-- v — визуальный
-- i — вставка
-- c — командная строка
-- h — скрытый (только в терминале)
-- a — во всех режимах
vim.opt.mouse = "n"

-- Tabs & Indentation
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.bo.softtabstop = 2
vim.opt.expandtab = true
vim.opt.autoindent = true

-- Line Wrapping
vim.opt.wrap = false

-- Search Settings
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Cursor Line
vim.opt.cursorline = true

-- Appearance
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.signcolumn = "yes"
vim.opt.showmode = false

-- Backspace
vim.opt.backspace = "indent,eol,start"
