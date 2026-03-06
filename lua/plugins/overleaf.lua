return {
  "richwomanbtc/overleaf.nvim",
  config = function()
    require("overleaf").setup({
      cookie = os.getenv("OVERLEAF_COOKIE") or "",
      log_level = "debug",
      node_path = "node",
    })
  end,
  build = "cd node && npm install",
}
