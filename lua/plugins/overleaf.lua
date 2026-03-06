return {
  "richwomanbtc/overleaf.nvim",
  config = function()
    require("overleaf").setup({
      cookie = "", -- set your overleaf_session2 cookie here (do not commit)
      log_level = "debug",
      node_path = "node",
    })
  end,
  build = "cd node && npm install",
}
