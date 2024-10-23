return {
  "rachartier/tiny-inline-diagnostic.nvim",
  -- enabled = false,
  event = "VeryLazy",
  config = function()
    require("tiny-inline-diagnostic").setup()
  end,
}
