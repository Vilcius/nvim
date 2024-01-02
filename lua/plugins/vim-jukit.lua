vim.g.jukit_mappings_ext_enabled = 'py'
vim.api.nvim_set_var('jukit_terminal', 'kitty')
vim.api.nvim_set_var('jukit_inline_plotting', 1)
vim.api.nvim_set_var('jukit_mappings_ext_enabled', 'py')
vim.api.nvim_set_var('jukit_highlight_markers', 1)
vim.api.nvim_set_var('jukit_enable_textcell_bg_hl', 1)
vim.api.nvim_set_var('jukit_enable_textcell_bg_syntax', 1)
vim.api.nvim_set_var('jukit_output_new_os_window', 1)
vim.api.nvim_set_var('jukit_text_syntax_file', "$VIMRUNTIME . '/syntax/' . 'markdown.vim'")
vim.api.nvim_set_var('jukit_in_style', 4)
vim.api.nvim_set_hl(0, "jukit_cellmarker_colors", { fg = "#414868", bg = "#414868" })
vim.api.nvim_set_hl(0, "jukit_textcell_bg_colors", { bg = "#1e2030", fg = "#c4a7e7" })

return {
  "luk400/vim-jukit",
}
