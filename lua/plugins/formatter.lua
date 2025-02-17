return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      html = { "prettier" },
      css = { "prettier" },
      json = { "prettier" },
      markdown = { "prettier" },
      javascript = { "prettier" },
      typescript = { "prettier" },
      javascriptreact = { "prettier" },
      typescriptreact = { "prettier" },
    },
    default_format_opts = {
      lsp_format = "fallback",
    },
  },
}
