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
          after = function()
            require('lualine').setup({ options = { theme = 'onedark' } })
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
          after = function()
            require('lualine').setup({ options = { theme = 'onedark' } })
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
          after = function()
            require('lualine').setup({ options = { theme = 'onedark' } })
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
          after = function()
            require('lualine').setup({ options = { theme = 'onedark' } })
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
          after = function()
            require('lualine').setup({ options = { theme = 'onedark' } })
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
          after = function()
            require('lualine').setup({ options = { theme = 'onedark' } })
          end,
        },
        {
          name = 'Catppuccino Latte',
          colorscheme = 'catppuccin-latte',
          after = function()
            require('lualine').setup({ options = { theme = 'catppuccin' } })
          end,
        },
        {
          name = 'Catppuccino Frappe',
          colorscheme = 'catppuccin-frappe',
          after = function()
            require('lualine').setup({ options = { theme = 'catppuccin' } })
          end,
        },
        {
          name = 'Catppuccino Macchiato',
          colorscheme = 'catppuccin-macchiato',
          after = function()
            require('lualine').setup({ options = { theme = 'catppuccin' } })
          end,
        },
        {
          name = 'Catppuccino Mocha',
          colorscheme = 'catppuccin-mocha',
          after = function()
            require('lualine').setup({ options = { theme = 'catppuccin' } })
          end,
        },
        {
          name = 'Vscode Dark',
          colorscheme = 'vscode',
          before = function()
            require('vscode').setup()
            require('vscode').load('dark')
          end,
          after = function()
            require('lualine').setup({ options = { theme = 'vscode' } })
          end,
        },
        {
          name = 'Vscode Light',
          colorscheme = 'vscode',
          before = function()
            require('vscode').setup()
            require('vscode').load('light')
          end,
          after = function()
            require('lualine').setup({ options = { theme = 'vscode' } })
          end,
        },
        {
          name = 'Finale',
          colorscheme = 'finale',
          after = function()
            require('lualine').setup({ options = { theme = 'finale' } })
          end,
        },
        {
          name = 'NeoCyberVim',
          colorscheme = 'NeoCyberVim',
          after = function()
            require('lualine').setup({ options = { theme = 'NeoCyberVim' } })
          end,
        },
        {
          name = 'Default',
          colorscheme = 'default',
          after = function()
            require('lualine').setup({ options = { theme = 'auto' } })
          end,
        },
      },
      vim.keymap.set('n', '<leader>tp', ':lua require("theme-picker").open_theme_picker()<CR>', { noremap = true, silent = true })
    },
  },
}
