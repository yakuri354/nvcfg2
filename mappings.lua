local M = {}

-- more keybinds!

M.term = {
  t = {
    ["<C-h>"] = { "<c-\\><c-n><C-w>h", "window left" },
    ["<C-l>"] = { "<c-\\><c-n><C-w>l", "window right" },
    ["<C-j>"] = { "<c-\\><c-n><C-w>j", "window down" },
    ["<C-k>"] = { "<c-\\><c-n><C-w>k", "window up" },
    ["<C-;>"] = { "<c-l>", "clear terminal" },
  }
}
return M
