-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local wk = require("which-key")

wk.add({
  -- Cursor centering
  { "<Down>",      "jzz",                                          desc = "Move down and center",          mode = "n" },
  { "<Up>",        "kzz",                                          desc = "Move up and center",            mode = "n" },

  -- Visual: move selected lines
  { "<S-Down>",    ":m '>+1<CR>gv=gv",                            desc = "Shift selected lines down",     mode = "v" },
  { "<S-Up>",      ":m '<-2<CR>gv=gv",                            desc = "Shift selected lines up",       mode = "v" },
  { "<S-Left>",    "<gv",                                          desc = "Shift selected lines left",     mode = "v" },
  { "<S-Right>",   ">gv",                                          desc = "Shift selected lines right",    mode = "v" },

  -- Normal: indent current line
  { "<S-Left>",    "<<",                                           desc = "Shift current line left",       mode = "n" },
  { "<S-Right>",   ">>",                                           desc = "Shift current line right",      mode = "n" },

  -- Search centering
  { "n",           "nzzzv",                                        desc = "Jump to next search",           mode = "n" },
  { "N",           "Nzzzv",                                        desc = "Jump to previous search",       mode = "n" },

  -- Page navigation centered
  { "<C-u>",       "<C-u>zz",                                      desc = "Move up page and center",       mode = "n" },
  { "<C-d>",       "<C-d>zz",                                      desc = "Move down page and center",     mode = "n" },
  { "<S-Up>",      "<C-u>zz",                                      desc = "Move up page and center",       mode = "n" },
  { "<S-Down>",    "<C-d>zz",                                      desc = "Move down page and center",     mode = "n" },
  { "{",           "{zz",                                          desc = "Previous empty line",           mode = "n" },
  { "}",           "}zz",                                          desc = "Next empty line",               mode = "n" },

  -- Line editing
  { "<C-o>",       "o<Esc>k",                                      desc = "Create empty line below",       mode = "n" },
  { "<C-i>",       "O<Esc>k",                                      desc = "Create empty line above",       mode = "n" },
  { "J",           "mzJ`z",                                        desc = "Join line below",               mode = "n" },

  -- Split management
  { "<C-S-Left>",  "<cmd>silent vertical resize +3<CR>",          desc = "Resize split left",             mode = "n" },
  { "<C-S-Right>", "<cmd>silent vertical resize -3<CR>",          desc = "Resize split right",            mode = "n" },
  { "<C-S-Up>",    "<cmd>silent resize +3<CR>",                   desc = "Resize split up",               mode = "n" },
  { "<C-S-Down>",  "<cmd>silent resize -3<CR>",                   desc = "Resize split down",             mode = "n" },
  { "<leader>th",  "<C-w>t<C-w>H",                                desc = "Split to vertical",             mode = "n" },
  { "<leader>tv",  "<C-w>t<C-w>K",                                desc = "Split to horizontal",           mode = "n" },
  { "<C-Tab>",     "<C-w>w",                                       desc = "Cycle splits",                  mode = "n" },
  { "<PageUp>",    "<cmd>bprevious<CR>",                           desc = "Move to previous buffer",       mode = "n" },
  { "<PageDown>",  "<cmd>bnext<CR>",                               desc = "Move to next buffer",           mode = "n" },

  -- Clipboard (normal)
  { "<leader>y",   [["+y]],                                        desc = "Copy to clipboard",             mode = "n" },
  { "<leader>Y",   [["+Y]],                                        desc = "Copy line to clipboard",        mode = "n" },
  { "<leader>dd",  [["_d]],                                        desc = "Delete to trash",               mode = "n" },
  { "<leader>p",   [["+p]],                                        desc = "Paste from clipboard",          mode = "n" },
  { "<leader>P",   [["+P]],                                        desc = "Paste from clipboard above",    mode = "n" },

  -- Clipboard (visual)
  { "<leader>y",   [["+y]],                                        desc = "Copy to clipboard",             mode = "v" },
  { "<leader>dd",  [["_d]],                                        desc = "Delete to trash",               mode = "v" },
  { "<leader>p",   [["+p]],                                        desc = "Paste from clipboard",          mode = "v" },
  { "<leader>P",   [["+P]],                                        desc = "Paste from clipboard above",    mode = "v" },

  -- Location list
  { "<leader>k",   "<cmd>lnext<CR>zz",                            desc = "Next location item",            mode = "n" },
  { "<leader>j",   "<cmd>lprev<CR>zz",                            desc = "Previous location item",        mode = "n" },

  -- Misc
  { "Q",           "<nop>",                                        desc = "Disable Ex mode",               mode = "n" },
  { "<C-f>",       "<cmd>silent !tmux new tmux-sessionizer<CR>",  desc = "New tmux session",              mode = "n" },
  { "<leader>mr",  "<cmd>CellularAutomaton make_it_rain<CR>",     desc = "Make it rain!",                 mode = "n" },
  { "<leader>ml",  "<cmd>CellularAutomaton game_of_life<CR>",     desc = "Game of Life",                  mode = "n" },
  { "<leader>ms",  "<cmd>CellularAutomaton scramble<CR>",         desc = "Scramble",                      mode = "n" },
})
