return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        pylsp = {
          settings = {
            pylsp = {
              plugins = {
                jedi = { environment = vim.fn.exepath('python3') }
              },
            },
          },
        },
      },
    },
  },

}
