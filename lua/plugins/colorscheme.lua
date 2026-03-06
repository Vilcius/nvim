return {
  { "RedsXDD/neopywal.nvim", name = "neopywal" },
  { url = "https://codeberg.org/jthvai/lavender.nvim", branch = "stable" },
  { "dciccale/vim-space" },
  {
    "Vilcius/cyberspace.vim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("cyberspace")
    end,
  },
  { url = "https://github.com/Shadorain/shadotheme" },
  { "hyperb1iss/silkcircuit-nvim" },
  {
    "Zeioth/neon.nvim",
    opts = {
      dim_inactive = false,
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
      },
    },
  },
}
