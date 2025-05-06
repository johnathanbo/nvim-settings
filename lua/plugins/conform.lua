return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      eruby = { "htmlbeautifier" },
      ruby = { "rubocop", "syntax_tree" },
      markdown = { "markdownlint" },
      yaml = { "yamlfix" },
      javascript = { "prettierd", "prettier" },
      typescript = { "prettierd", "prettier" },
      json = { "jq" },
    },
  },
}
