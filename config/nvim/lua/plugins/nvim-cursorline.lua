return {
  "ya2s/nvim-cursorline",
  config = function()
  local config = require('nvim-cursorline')
    config.setup {
    cursorline = {
      enable = true,
      timeout = 1000,
      number = false,
    },
    cursorword = {
      enable = true,
      min_length = 3,
      hl = { underline = true },
    }
  }
  end
}
