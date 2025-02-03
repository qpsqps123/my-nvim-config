return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = { "prettier", "prettierd" },
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "ts_ls", "html", "cssls", "emmet_ls", "tailwindcss" }, -- tsserver를 설치하도록 지정
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.ts_ls.setup({})
      lspconfig.cssls.setup({})
      lspconfig.html.setup({})
      lspconfig.emmet_ls.setup({})
      lspconfig.tailwindcss.setup({})

      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
