-- Lsp
vim.lsp.enable { 'luals', 'pyright' }
vim.diagnostic.config { virtual_lines = true }

-- Настраиваем LSP окна с рамками
local border = "rounded" -- Можно заменить на "single", "double", "solid" и т. д.

-- Настройки диагностических окон
vim.diagnostic.config({
  virtual_text = false, -- Отключает виртуальный текст (можно оставить true, если нужен)
  float = { border = border }, -- Добавляет рамки к окнам диагностики
})

-- Перехватываем стандартные LSP-окна и задаем рамки
local floating_preview = vim.lsp.util.open_floating_preview
vim.lsp.util.open_floating_preview = function(contents, syntax, opts, ...)
  opts = opts or {}
  opts.border = border
  return floating_preview(contents, syntax, opts, ...)
end
