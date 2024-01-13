-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local wk = require("which-key")

wk.register({ -- Moving visually selected lines around
    ["<S-Down>"] = { ":m '>+1<CR>gv=gv", "Shift selected lines down" },
    ["<S-Up>"] = { ":m '<-2<CR>gv=gv", "Shift selected lines up" },
    ["<S-Left>"] = { "<gv", "Shift selected lines left" },
    ["<S-Right>"] = { ">gv", "Shift selected lines right" },
  },
  {
    mode = "v",
  })

wk.register({ -- Moving lines around
    ["<S-Left>"] = { "<<", "Shift current line left" },
    ["<S-Right>"] = { ">>", "Shift current line right" },
  },
  {
    mode = "n",
  })

wk.register({ -- Jump to next/previous search and center
    ["n"] = { "nzzzv", "Jump to next search" },
    ["N"] = { "Nzzzv", "Jump to next search" },
  },
  {
    mode = "n",
  })

wk.register({
    ["<C-u>"] = { "<C-u>zz", "Move up page and center" },
    ["<C-d>"] = { "<C-d>zz", "Move down page and center" },
    ["<S-Up>"] = { "<C-u>zz", "Move up page and center" },
    ["<S-Down>"] = { "<C-d>zz", "Move down page and center" },
    ["{"] = { "{zz", "Previous empty line" },
    ["}"] = { "}zz", "Next empty line" },
  },
  {
    mode = "n",
  })

wk.register({
    ["<C-o>"] = { "o<Esc>k", "Create empty line below" },
    ["<C-i>"] = { "O<Esc>k", "Create empty line above" },
    ["J"] = { "mzJ`z", "Join line below with current line" },
  },
  {
    mode = "n",
  })

wk.register({
    -- Make adjusting split sizes a bit more friendly
    ["<C-S-Left>"] = { "<cmd>silent vertical resize +3<CR>", "Resize split left" },
    ["<C-S-Right>"] = { "<cmd>silent vertical resize -3<CR>", "Resize split right" },
    ["<C-S-Up>"] = { "<cmd>silent resize +3<CR>", "Resize split up" },
    ["<C-S-Down>"] = { "<cmd>silent resize -3<CR>", "Resize split down" },
    -- Change 2 split windows from vert to horiz or horiz to vert
    ["<leader>th"] = { "<C-w>t<C-w>H", "Split to vertical" },
    ["<leader>tv"] = { "<C-w>t<C-w>K", "Split to horizontal" },
    -- Move between splits (uncomment if not using tmux plugin)
    -- ["<C-Left>"] = { "<C-w>h", "Move to left split" },
    -- ["<C-Down>"] = { "<C-w>j", "Move to bottom split" },
    -- ["<C-Up>"] = { "<C-w>k", "Move to above split" },
    -- ["<C-Right>"] = { "<C-w>l", "Move to right split" },
    ["<C-Tab>"] = { "<C-w>w", "Cycle splits" },
    -- Move between buffers
    ["<PageUp>"] = { "<cmd>bprevious<CR>", "Move to previous buffer" },
    ["<PageDown>"] = { "<cmd>bnext<CR>", "Move to next buffer" },
  },
  {
    mode = "n",
  })

wk.register({
    ["<leader>y"] = { [["+y]], "Copy text to clipboard" },
    ["<leader>Y"] = { [["+Y]], "Copy line to clipboard" },
    ["<leader>dd"] = { [["_d]], "Delete text to trash" },
    ["<leader>p"] = { [["+p]], "Paste from clipboard" },
    ["<leader>P"] = { [["+P]], "Paste from clipboard above" },
  },
  {
    mode = "n",
  })


wk.register({
    ["<leader>y"] = { [["+y]], "Copy visual text to clipboard" },
    ["<leader>dd"] = { [["_d]], "Delete visual text to trash" },
    ["<leader>p"] = { [["+p]], "Paste visual from clipboard" },
    ["<leader>P"] = { [["+P]], "Paste visual from clipboard above" },
  },
  {
    mode = "v",
  })

wk.register({
    ["<leader>k"] = { "<cmd>lnext<CR>zz", "Next item" },
    ["<leader>j"] = { "<cmd>lprev<CR>zz", "Previous item" },
  },
  {
    mode = "n",
  })


wk.register({
    ["Q"] = { "<nop>", "Do nothing" },
    ["<C-f>"] = { "<cmd>silent !tmux new tmux-sessionizer<CR>", "New tmux session" },
    -- ["<leader>s"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], "Refactor word under cursor" },
    -- ["<leader>x"] = { "<cmd>!chmod +x %<CR>", { silent = true }, "Change file to executable" },
    ["<leader>mr"] = { "<cmd>CellularAutomaton make_it_rain<CR>", "Make it rain!" },
    ["<leader>ml"] = { "<cmd>CellularAutomaton game_of_life<CR>", "Game of Life" },
    ["<leader>ms"] = { "<cmd>CellularAutomaton scramble<CR>", "Scramble" },
  },
  {
    mode = "n",
  })
