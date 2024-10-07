return {
  "azratul/live-share.nvim",
  dependencies = {
    "jbyuki/instant.nvim",
  },
  config = function()
    vim.g.instant_username = "Julve"

    require("live-share").setup({
      max_attempts = 40, -- 10 seconds
      service = "serveo.net"
    })

    -- Función para iniciar el servidor de Live Share con puerto personalizado
    local function live_share_server(port)
      if port then
        vim.cmd("LiveShareServer " .. port)
      else
        print("Por favor, introduce el puerto para iniciar el servidor de Live Share.")
      end
    end

    -- Función para unirse a una Live Share con URL y puerto
    local function live_share_join(url, port)
      if url and port then
        vim.cmd("LiveShareJoin " .. url .. " " .. port)
      else
        print("Por favor, introduce la URL y el puerto para unirte a Live Share.")
      end
    end

    -- Mapeo para iniciar un servidor de Live Share
    vim.keymap.set("n", "<leader>ls", function()
      vim.ui.input({ prompt = "Introduce el puerto para el servidor: " }, function(port)
        live_share_server(port)
      end)
    end, {})

    -- Mapeo para unirse a una Live Share
    vim.keymap.set("n", "<leader>lj", function()
      -- Solicita la URL
      vim.ui.input({ prompt = "Introduce la URL: " }, function(url)
        if url then
          -- Solicita el puerto
          vim.ui.input({ prompt = "Introduce el puerto: " }, function(port)
            live_share_join(url, port)
          end)
        else
          print("No se introdujo la URL.")
        end
      end)
    end, {})
  end
}

