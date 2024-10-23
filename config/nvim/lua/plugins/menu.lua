return {
  { "nvchad/volt" , lazy = true },
  { "nvchad/menu" , lazy = true },
  vim.keymap.set("n", "<RightMouse>", function()
    vim.cmd.exec '"normal! \\<RightMouse>"'

    local options = vim.bo.ft == "NvimTree" and "nvimtree" or "default"
    require("menu").open(options, { mouse = true })
  end, {})
}
