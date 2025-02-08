return {
  { import = "plugins.custom.rust_config" },
  { import = "plugins.custom.oil" },
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    config = function()
      require "configs.conformxit"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "rust-analyzer",
        "prettier",
        "pyright",
        "typescript-language-server",
        "jsonls",
        "gopls",
        "goimports",
        "gofumpt",
        "clangd",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "python",
        "rust",
        "toml",
        "go",
        "gomod",
        "gowork",
        "gosum",
        "typescript",
        "javascript",
        "c",
      },
    },
  },
}
