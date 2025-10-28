return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
      ensure_installed = {
        "lua_ls", -- Asegura que el servidor LSP de Lua esté instalado
        "clangd", -- Para C/C++
        "bashls", -- Para Bash
        "rust_analyzer", -- Para Rust
        "pyright", -- Para Python
        "gopls", -- Para Go
        "jdtls", -- Para Java
        "kotlin_language_server", -- Para Kotlin
        "solargraph", -- Para Ruby
        "html", -- Para HTML
        "cssls", -- Para CSS
        "ts_ls", -- Para JavaScript/TypeScript (typescript-language-server)
        "marksman", -- Para Markdown
        "texlab", -- Para LaTeX
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      vim.lsp.config("lua_ls", { capabilities = capabilities })
      vim.lsp.config("clangd", { capabilities = capabilities })
      vim.lsp.config("bashls", { capabilities = capabilities })
      vim.lsp.config("rust_analyzer", { capabilities = capabilities })
      vim.lsp.config("pyright", { capabilities = capabilities })
      vim.lsp.config("gopls", { capabilities = capabilities })
      vim.lsp.config("jdtls", { capabilities = capabilities })
      vim.lsp.config("kotlin_language_server", { capabilities = capabilities })
      vim.lsp.config("solargraph", { capabilities = capabilities })
      vim.lsp.config("html", { capabilities = capabilities })
      vim.lsp.config("cssls", { capabilities = capabilities })
      vim.lsp.config("ts_ls", { capabilities = capabilities })
      vim.lsp.config("marksman", { capabilities = capabilities })
      vim.lsp.config("texlab", { capabilities = capabilities })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
