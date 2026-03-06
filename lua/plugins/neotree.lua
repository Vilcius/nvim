return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = function(_, opts)
    opts.filesystem = opts.filesystem or {}
    opts.filesystem.components = opts.filesystem.components or {}
    opts.filesystem.components.harpoon_index = function(config, node, _)
      local harpoon = require("harpoon")
      local path = node:get_id()
      local ok, index = pcall(harpoon.get_index_of, path)
      if ok and index and index > 0 then
        return {
          text = string.format(" ⥤ %d", index),
          highlight = config.highlight or "NeoTreeDirectoryIcon",
        }
      end
      return {}
    end
    opts.filesystem.renderers = {
      file = {
        { "icon" },
        { "name", use_git_status_colors = true },
        { "harpoon_index" },
        { "diagnostics" },
        { "git_status", highlight = "NeoTreeDimText" },
      },
    }
  end,
}
