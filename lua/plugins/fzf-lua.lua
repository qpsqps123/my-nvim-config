return {
  {
    "ibhagwan/fzf-lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      { "junegunn/fzf.vim", dependencies = { "junegunn/fzf" } },
      "BurntSushi/ripgrep",
      "sharkdp/fd",
      "hpjansson/chafa",
    },
    opts = function()
      require("fzf-lua").setup({
        previewer = {
          builtin = {
            extensions = {
              img = {
                cmd = "chafa",
                args = { "--colors=16", "--size=auto" },
                filetypes = { "png", "jpg", "jpeg", "gif", "bmp", "tiff" },
              },
            },
          },
        },
      })
    end,
  },
}
