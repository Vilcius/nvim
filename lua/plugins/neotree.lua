return {
  require("neo-tree").setup({
    filesystem = {
      components = {
        harpoon_index = function(config, node, state)
          local harpoon = require("harpoon")
          local path = node:get_id()
          local succuss, index = pcall(harpoon.get_index_of, path)
          if succuss and index and index > 0 then
            return {
              text = string.format(" ⥤ %d", index), -- <-- Add your favorite harpoon like arrow here
              highlight = config.highlight or "NeoTreeDirectoryIcon",
            }
          else
            return {}
          end
        end
      },
      renderers = {
        file = {
          { "icon" },
          { "name",         use_git_status_colors = true },
          { "harpoon_index" }, --> This is what actually adds the component in where you want it
          { "diagnostics" },
          { "git_status",   highlight = "NeoTreeDimText" },
        }
      }
    },
  })
}
