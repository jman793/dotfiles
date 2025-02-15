require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local go_to_error = function()
  vim.diagnostic.goto_next { severity = vim.diagnostic.severity.ERROR }
end

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "gd", vim.lsp.buf.definition, { desc = "Go To Definition" })
map("n", "gD", vim.lsp.buf.declaration, { desc = "Go To Declaration" })
map("n", "gi", vim.lsp.buf.implementation, { desc = "Go To Implementation" })
map("n", "gE", go_to_error, { desc = "Go To Next Error" })
map("i", "jk", "<ESC>")

-- oil mappings
map("n", "-", require("oil").open, { desc = "Open parent directory." })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
