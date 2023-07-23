vim.o.updatetime = 250
vim.cmd [[autocmd! CursorHold, CursorHoldI * lua vim.diagnostic.open_float(nil, { focus = false })]]

local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

lspconfig.tsserver.setup{
  filetypes = {
    "javascript",
    "typescript",
    "typescriptreact",
    "typescript.tsx"
  },
  root_dir = function() return vim.loop.cwd() end
}

lspconfig.tailwindcss.setup {}
