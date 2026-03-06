return {
  "luk400/vim-jukit",
  init = function()
    vim.g.python3_host_prog = "/usr/bin/python3"
    vim.g.jukit_terminal = "kitty"
    vim.g.jukit_inline_plotting = 1
    vim.g.jukit_mappings_ext_enabled = "py"
    vim.g.jukit_highlight_markers = 1
    vim.g.jukit_enable_textcell_bg_hl = 1
    vim.g.jukit_enable_textcell_bg_syntax = 1
    vim.g.jukit_output_new_os_window = 1
    vim.g.jukit_text_syntax_file = "$VIMRUNTIME . '/syntax/' . 'markdown.vim'"
    vim.g.jukit_in_style = 4
  end,
  config = function()
    vim.keymap.set("n", "<C-PageDown>", "<cmd>call jukit#cells#jump_to_next_cell()<CR>zz", { desc = "Jump to next cell" })
    vim.keymap.set("n", "<C-PageUp>", "<cmd>call jukit#cells#jump_to_previous_cell()<CR>zz", { desc = "Jump to previous cell" })
  end,
}
