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
          "jdtls",       -- Java
          "clangd",      -- C++
          "pyright",     -- Python
          "ts_ls",    -- TypeScript/JavaScript
          "html",        -- HTML
          "cssls",       -- CSS
          "jsonls",      -- JSON
	  "rust_analyzer",-- Rust
	  "lua_ls",
	  "tailwindcss",
	  "bashls",
	  "yamlls"
        },
      })

       local lspconfig = require("lspconfig")
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

-- Java (jdtls)
lspconfig.jdtls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

-- C++ (clangd)
lspconfig.clangd.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

-- Python (pyright)
lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

-- TypeScript & JavaScript (tsserver)
lspconfig.ts_ls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

-- HTML
lspconfig.html.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

-- CSS
lspconfig.cssls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

-- JSON
lspconfig.jsonls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

-- Rust
lspconfig.rust_analyzer.setup({
   on_attach = on_attach,
   capabilities = capabilities,
})

-- TailwindCSS
lspconfig.tailwindcss.setup({
   on_attach = on_attach,
   capabilities = capabilities
})

-- Lua
lspconfig.lua_ls.setup({
   on_attach = on_attach,
   capabilities = capabilities
})

-- Bash
lspconfig.bashls.setup({
   on_attach = on_attach,
   capabilities = capabilities
})

-- Yaml
lspconfig.yamlls.setup({
   on_attach = on_attach,
   capabilities = capabilities
})

end,
  },
}


