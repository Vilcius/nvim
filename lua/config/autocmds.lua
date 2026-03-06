-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Enable spell check only for text filetypes
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown", "tex", "gitcommit", "text" },
  callback = function()
    vim.opt_local.spell = true
  end,
})

-- Adapt jukit highlights to the active colorscheme
local function set_jukit_highlights()
  local bg = vim.api.nvim_get_hl(0, { name = "Normal" }).bg
  if bg then
    local hex_bg = string.format("#%06x", bg)
    vim.api.nvim_set_hl(0, "jukit_cellmarker_colors", { fg = hex_bg, bg = hex_bg })
  end
  vim.api.nvim_set_hl(0, "jukit_textcell_bg_colors", { link = "Folded" })
end

vim.api.nvim_create_autocmd({ "VimEnter", "ColorScheme" }, {
  callback = set_jukit_highlights,
})
