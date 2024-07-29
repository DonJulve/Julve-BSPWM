return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1002,
    config = function()
      vim.cmd.colorscheme "catppuccin-mocha"
    end
  }
}
