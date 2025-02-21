return {
  "folke/noice.nvim",
  opts = {
    routes = {
      {
        -- When multiple LSPs are active for the same file, "No information available" might show up despite proper functioning.
        -- This resolves the issue(though it may cause side effects).
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = {
          skip = true,
        },
      },
    },
  },
}
