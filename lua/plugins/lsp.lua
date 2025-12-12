return {
  {
    "neovim/nvim-lspconfig",
  },
  {
    "williamboman/mason.nvim",
    config = true, -- Mason's default setup
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "neovim/nvim-lspconfig" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "jdtls",          -- Java
          "clangd",         -- C++
          "pyright",        -- Python
          "ts_ls",          -- TypeScript/JavaScript
          "html",           -- HTML
          "cssls",          -- CSS
          "jsonls",         -- JSON
          "gopls",          -- Golang
          "rust_analyzer",  -- Rust
          "lua_ls",
          "tailwindcss",
          "bashls",
          "yamlls"
        },
      })

      -- Define the on_attach function once
      local on_attach = function(client, bufnr)
        -- Keymaps for LSP
        local opts = { noremap = true, silent = true, buffer = bufnr }
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
      end

      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- --- Start of the Fix ---

      -- Java (jdtls)
      -- NOTE: We still require lspconfig to use its util functions.
      local lspconfig_util = require('lspconfig').util
      vim.lsp.config("jdtls", {
        on_attach = on_attach,
        capabilities = capabilities,

        root_dir = lspconfig_util.root_pattern('build.gradle', 'gradlew', 'pom.xml', '.git'),
        settings = {
          java = {
            configuration = {
              runtimes = {
                {
                  name = "Java Openjdk",
                  path = "/usr/lib/jvm/java-21-openjdk"
                },
              }
            }
          }
        }
      })

      -- C++ (clangd)
      vim.lsp.config("clangd", {
        on_attach = on_attach,
        capabilities = capabilities,
      })

      -- Python (pyright)
      vim.lsp.config("pyright", {
        on_attach = on_attach,
        capabilities = capabilities,
      })

      -- TypeScript & JavaScript (tsserver)
      vim.lsp.config("ts_ls", {
        on_attach = on_attach,
        capabilities = capabilities,
      })

      -- HTML
      vim.lsp.config("html", {
        on_attach = on_attach,
        capabilities = capabilities,
      })

      -- CSS
      vim.lsp.config("cssls", {
        on_attach = on_attach,
        capabilities = capabilities,
      })

      -- JSON
      vim.lsp.config("jsonls", {
        on_attach = on_attach,
        capabilities = capabilities,
      })

      -- Rust
      vim.lsp.config("rust_analyzer", {
        on_attach = on_attach,
        capabilities = capabilities,
      })

      -- TailwindCSS
      vim.lsp.config("tailwindcss", {
        on_attach = on_attach,
        capabilities = capabilities
      })

      -- Lua
      vim.lsp.config("lua_ls", {
        on_attach = on_attach,
        capabilities = capabilities
      })

      -- Bash
      vim.lsp.config("bashls", {
        on_attach = on_attach,
        capabilities = capabilities
      })

      -- Yaml
      vim.lsp.config("yamlls", {
        on_attach = on_attach,
        capabilities = capabilities
      })

      -- --- End of the Fix ---
    end,
  },
}
