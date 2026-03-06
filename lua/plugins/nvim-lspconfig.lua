return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      diagnostics = {
        virtual_text = false,
      },
      ---@type lspconfig.options
      servers = {
        pylsp = {
          settings = {
            pylsp = {
              plugins = {
                jedi = { environment = vim.fn.exepath("python3") },
                pycodestyle = { ignore = { "E226", "E265", "E501", "W391", "W503", "E402" } },
              },
            },
          },
        },
      },
    },
  },
}
