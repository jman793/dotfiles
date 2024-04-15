require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- oil mappings
map("n", "-", require("oil").open, { desc = "Open parent directory."})

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
