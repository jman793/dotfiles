require "nvchad.mappings"

-- add yours here

local go_to_error = function()
  vim.diagnostic.goto_next { severity = vim.diagnostic.severity.ERROR }
end

vim.keymap.set("n", ";", ":", { desc = "CMD enter command mode" })
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go To Definition" })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go To Declaration" })
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Go To Implementation" })
vim.keymap.set("n", "gs", vim.lsp.buf.signature_help, { desc = "Go To Signature" })
vim.keymap.set("n", "grn", vim.lsp.buf.rename, { desc = "Rename" })
vim.keymap.set("n", "grr", vim.lsp.buf.references, { desc = "Show References" })
vim.keymap.set("n", "gE", go_to_error, { desc = "Go To Next Error" })
vim.keymap.set("i", "<C-s>", vim.lsp.buf.signature_help)
vim.keymap.set("i", "jk", "<ESC>")

-- oil mappings
vim.keymap.set("n", "-", require("oil").open, { desc = "Open parent directory." })

-- lazygit mappings
vim.keymap.set("n", "<leader>lg", "<cmd>LazyGit<cr>")
