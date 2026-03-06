return {
  "richwomanbtc/overleaf.nvim",
  config = function()
    require("overleaf").setup({
      cookie = "REDACTED",
      log_level = "debug",
      node_path = "node",
    })
  end,
  build = "cd node && npm install",
}
