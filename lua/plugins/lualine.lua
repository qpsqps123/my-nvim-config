return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local configs = require("lualine")
    configs.setup({
      options = {
        theme = "codedark",
      },
      sections = {
        lualine_c = {
          {
            "filename",
            path = 1, -- 프로젝트 루트부터 상대 경로 표시
            shorting_target = 40, -- 너무 길면 '...'으로 생략
          },
        },
      },
    })
  end,
}
