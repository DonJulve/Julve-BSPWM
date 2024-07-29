return {
  {
    "Mofiqul/vscode.nvim",
    lazy = false,
    name = "vscode",
    priority = 1001,
    config = function()
      vim.cmd.colorscheme "vscode"
    end
  }
}
