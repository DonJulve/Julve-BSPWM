local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("vim-options")

-- Configuración de swap, backups y undo
vim.opt.swapfile = true
vim.opt.directory:prepend(vim.fn.stdpath("data") .. "/swap//")
vim.opt.backup = true
vim.opt.writebackup = true
vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath("data") .. "/undo//"

require("lazy").setup("plugins")
