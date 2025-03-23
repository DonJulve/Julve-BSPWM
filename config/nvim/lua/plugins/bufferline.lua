return {
  'akinsho/bufferline.nvim',
  config = function()
  require("bufferline").setup{
    options = {
      mode = "buffers", -- o "tabs" si prefieres
      offsets = {{filetype = "NvimTree", text = "File Explorer"}},
      close_command = "bdelete! %d", -- Comando para cerrar el buffer
      right_mouse_command = "bdelete! %d", -- Cerrar con clic derecho
      separator_style = "slant", -- Estilo del separador
    }
  }
  end,
}
