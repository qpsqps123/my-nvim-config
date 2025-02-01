return {
  {
    "tpope/vim-fugitive",
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = function()
      require("gitsigns").setup()

      vim.keymap.set("n", "<leader>ghc", ":Gitsigns toggle_current_line_blame<CR>", {})
    end,
  },
}
