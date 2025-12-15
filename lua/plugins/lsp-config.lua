return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "kotlin_language_server", "tsserver", "jdtls" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      vim.lsp.config.lua_ls = {
        capabilities = capabilities
      }

      vim.lsp.config.kotlin_language_server = {
        capabilities = capabilities
      }

      vim.lsp.config.tsserver = {
        capabilities = capabilities
      }

      vim.lsp.enable('lua_ls')
      vim.lsp.enable('kotlin_language_server')
      vim.lsp.enable('tsserver')
      vim.lsp.enable('jdtls')

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
