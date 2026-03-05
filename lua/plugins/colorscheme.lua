return {
  {
    "RedsXDD/neopywal.nvim",
    name = "neopywal",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    url = "https://codeberg.org/jthvai/lavender.nvim",
    branch = "stable", -- versioned tags + docs updates from main
    lazy = false,
    priority = 1000,
  },
  -- {
  --   "AetherSyscall/AetherAmethyst.nvim",
  --   priority = 1000,
  --   lazy = false,
  -- },
  {
    "dciccale/vim-space",
    priority = 1000,
    lazy = false,
  },
  {
    "Vilcius/cyberspace.vim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("cyberspace")
    end,
  },
  {
    url = "https://github.com/Shadorain/shadotheme",
    lazy = false,
    priority = 1000,
  },
  {
    "hyperb1iss/silkcircuit-nvim",
    lazy = false,
    priority = 1000,
    -- config = function()
    --   vim.cmd.colorscheme("silkcircuit")
    -- end,
  },
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
