local Input = require('nui.input')
local event = require('nui.utils.autocmd').event

_G.dashNewFile = function()
  local input = Input({
    position = '50%',
    size = {
      width = 40,
    },
    border = {
      style = 'rounded',
      text = {
        top = ' Create a new file ',
        top_align = 'center',
      },
      padding = { 0, 1 },
    },
    relative = 'editor',
    win_options = {
      winhighlight = 'Normal:String,FloatBorder:VertSplit',
    },
  }, {
    prompt = '',
    default_value = '',
    on_close = function()
      require('notify').notify('New file was not created!', 'error')
    end,
    on_submit = function(value)
      vim.fn.execute('lua require("lazyvim.util").new_file("' .. value .. '")')
      vim.fn.execute('w ' .. value)
    end,
  })
  input:on(event.BufLeave, function() input:unmount() end)
  input:mount()
end

return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  opts = function()
    -- local logo = [[
    --      ██╗      █████╗ ███████╗██╗   ██╗██╗   ██╗██╗███╗   ███╗          Z
    --      ██║     ██╔══██╗╚══███╔╝╚██╗ ██╔╝██║   ██║██║████╗ ████║      Z
    --      ██║     ███████║  ███╔╝  ╚████╔╝ ██║   ██║██║██╔████╔██║   z
    --      ██║     ██╔══██║ ███╔╝    ╚██╔╝  ╚██╗ ██╔╝██║██║╚██╔╝██║ z
    --      ███████╗██║  ██║███████╗   ██║    ╚████╔╝ ██║██║ ╚═╝ ██║
    --      ╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝     ╚═══╝  ╚═╝╚═╝     ╚═╝
    -- ]]

    local logo = [[
       ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗
       ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║
       ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║
       ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║
       ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║
       ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝
    ]]

    logo = string.rep("\n", 8) .. logo .. "\n\n"

    local opts = {
      theme = "doom",
      hide = {
        -- this is taken care of by lualine
        -- enabling this messes up the actual laststatus setting after loading a file
        statusline = false,
      },
      config = {
        header = vim.split(logo, "\n"),
        -- stylua: ignore
        center = {
          { action = "Telescope find_files", desc = " Find file", icon = " ", key = "f" },
          -- { action = "ene | vim.ui.input(function(fn) <cmd>w fn, end)", desc = " New file", icon = " ", key = "n" },
          { action = "enew", desc = " New file", icon = " ", key = "n" },
          { action = "Telescope oldfiles", desc = " Recent files", icon = " ", key = "r" },
          { action = "Telescope live_grep", desc = " Find text", icon = " ", key = "g" },
          {
            action = [[lua require("lazyvim.util").telescope.config_files()()]],
            desc = " Config",
            icon = " ",
            key = "c"
          },
          { action = 'lua require("persistence").load()', desc = " Restore Session", icon = " ", key = "s" },
          { action = "LazyExtras", desc = " Lazy Extras", icon = " ", key = "x" },
          { action = "Lazy", desc = " Lazy", icon = "󰒲 ", key = "l" },
          { action = "qa", desc = " Quit", icon = " ", key = "q" },
        },
        footer = function()
          local stats = require("lazy").stats()
          local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
          return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
        end,
      },
    }

    for _, button in ipairs(opts.config.center) do
      button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
      button.key_format = "  %s"
    end

    -- close Lazy and re-open when the dashboard is ready
    if vim.o.filetype == "lazy" then
      vim.cmd.close()
      vim.api.nvim_create_autocmd("User", {
        pattern = "DashboardLoaded",
        callback = function()
          require("lazy").show()
        end,
      })
    end

    return opts
  end,
}
