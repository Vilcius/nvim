return {
  'rose-pine/neovim',
  name = 'rose-pine',
  lazy = false,
  priority = 1000,

  config = function()
    require('rose-pine').setup({
      -- @usage 'auto'|'main'|'moon'|'dawn'
      variant = 'moon',
      --- @usage 'main'|'moon'|'dawn'
      dark_variant = 'moon',
      -- disable_background = false,
      -- disable_float_background = true,
      -- disable_italics = false,
      --
      -- --- @usage string hex value or named color from rosepinetheme.com/palette
      -- groups = {
      --   background = 'base',
      --   background_nc = '_experimental_nc',
      --   panel = 'base',
      --   panel_nc = 'base',
      --   border = 'gold',
      --   comment = 'muted',
      --   link = 'iris',
      --   punctuation = 'subtle',
      --
      --   error = 'rose',
      --   hint = 'iris',
      --   info = 'foam',
      --   warn = 'gold',
      -- },
      --
      -- -- Change specific vim highlight groups
      -- -- https://github.com/rose-pine/neovim/wiki/Recipes
      -- highlight_groups = {
      --   IndentBlanklineContextChar = {
      --     fg = 'gold',
      --   },
      --
      --   -- Blend colours against the "base" background
      --   CursorLine = { bg = 'foam', blend = 10 },
      --   -- StatusLine = { fg = 'highlight_high', bg = 'love', blend = 10 },
      --   -- ColorColumn = { bg = 'pine' },
      -- }
      --
    })

    vim.cmd('colorscheme cyberspace')
    vim.api.nvim_set_hl(0, "jukit_cellmarker_colors", { fg = "#414868", bg = "#414868" })
    vim.api.nvim_set_hl(0, "jukit_textcell_bg_colors", { bg = "#1e2030", fg = "#c4a7e7" })
  end
}
