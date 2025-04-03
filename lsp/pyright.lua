return {
  cmd = { "pyright-langserver", "--stdio" },
  filetypes = { "python" },
  root_markers = { "pyproject.toml", "setup.py", "setup.cfg", "requirements.txt", ".git" },
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "off", -- Можно "basic" или "strict"
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
      },
    },
  },
}

