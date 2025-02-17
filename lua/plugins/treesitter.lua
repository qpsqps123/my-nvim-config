return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    incremental_selection = { enable = true },
    textobjects = { enable = true },
    auto_install = true,
  },
}
