vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
-- vim.g.have_nerd_font = true

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

-- Clipboard
-- vim.opt.clipboard:append("unnamedplus")

vim.lsp.enable { 'luals', 'pyright' }

vim.diagnostic.config { virtual_lines = true }

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

require'core.lazy'
