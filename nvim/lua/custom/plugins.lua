local plugins = {
  {
    "christoomey/vim-tmux-navigator",
    lazy = false
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "typescript-language-server",
        "css-lsp",
        "eslint-lsp",
        "html-lsp",
        "json-lsp",
        "lua-language-server",
        "tailwindcss-language-server"
      }
    }
  }
}

return plugins
