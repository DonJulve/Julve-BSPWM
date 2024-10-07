return {
  {
    'panghu-huang/theme-picker.nvim',
    lazy = false,
    opts = {
      picker = {
        layout_config = {
          width = 0.35,
          height = 0.5,
        },
      },
      themes = {
        {
          name = 'One Dark (Dark)',
          colorscheme = 'onedark',
          before = function()
            vim.g.onedark_config = {
              style = 'dark'
            }
          end,
        },
        {
          name = 'One Dark (Darker)',
          colorscheme = 'onedark',
          before = function()
            vim.g.onedark_config = {
              style = 'darker'
            }
          end,
        },
        {
          name = 'One Dark (Cool)',
          colorscheme = 'onedark',
          before = function()
            vim.g.onedark_config = {
              style = 'cool'
            }
          end,
        },
        {
          name = 'One Dark (Deep)',
          colorscheme = 'onedark',
          before = function()
            vim.g.onedark_config = {
              style = 'deep'
            }
          end,
        },
        {
          name = 'One Dark (Warm)',
          colorscheme = 'onedark',
          before = function()
            vim.g.onedark_config = {
              style = 'warm'
            }
          end,
        },
        {
          name = 'One Dark (Warmer)',
          colorscheme = 'onedark',
          before = function()
            vim.g.onedark_config = {
              style = 'warmer'
            }
          end,
        },
        {
          name = 'Catppuccino Latte',
          colorscheme = 'catppuccin-latte',
        },
        {
          name = 'Catppuccino Frappe',
          colorscheme = 'catppuccin-frappe',
        },
        {
          name = 'Catppuccino Macchiato',
          colorscheme = 'catppuccin-macchiato',
        },
        {
          name = 'Catppuccino Mocha',
          colorscheme = 'catppuccin-mocha',
        },
        {
          name = 'Vscode',
          colorscheme = 'vscode',
        },
        {
          name = 'Default',
          colorscheme = 'default',
        },
      },
      vim.keymap.set('n', '<leader>tp', ':lua require("theme-picker").open_theme_picker()<CR>', { noremap = true, silent = true })
    },
  },
}
