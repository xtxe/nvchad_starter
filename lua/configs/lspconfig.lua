require("nvchad.configs.lspconfig").defaults()

vim.diagnostic.config({
  virtual_text = {
    severity = vim.diagnostic.severity.ERROR
  }
})

local servers = { "cmake", "clangd", "ruff", "pyright", "gopls", "erlangls" }
vim.lsp.enable(servers)