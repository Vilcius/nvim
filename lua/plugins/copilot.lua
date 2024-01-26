-- TODO: Set insert mode keymaps for suggesting and other commands.

return {
  "github/copilot.vim",
  config = function()
    -- vim.keymap.set('i', '<C-M>', 'copilot#Accept("\\<CR>")', {
    --   expr = true,
    --   replace_keycodes = false
    -- })
    vim.keymap.set('i', '<C-M>', '<Plug>(copilot-suggest)')
    -- vim.g.copilot_no_tab_map = true
  end,
}
