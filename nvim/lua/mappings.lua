require "nvchad.mappings"

-- General Mappings
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", ";", ":", { desc = "CMD enter command mode" })
vim.keymap.set("i", "jj", "<ESC>")
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- life changing
vim.keymap.set("n", "<CR>", '@="m`o<C-V><Esc>``"<CR>')
vim.keymap.set("n", "<S-CR>", '@="m`O<C-V><Esc>``"<CR>')

-- Lsp Mappings
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go To Definition" })
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Lsp Hover" })
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Go To Implementation" })
vim.keymap.set("n", "gs", vim.lsp.buf.signature_help, { desc = "Go To Signature" })
vim.keymap.set("n", "grn", vim.lsp.buf.rename, { desc = "Rename" })
vim.keymap.set("n", "grr", vim.lsp.buf.references, { desc = "Show References" })
vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, { desc = "View Symbol" })
vim.keymap.set("i", "<C-s>", vim.lsp.buf.signature_help)

-- Diagnostic Mappings
local go_to_error = function()
  vim.diagnostic.goto_next { severity = vim.diagnostic.severity.ERROR }
end

vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, { desc = "View Diagnostic" })
vim.keymap.set("n", "gE", go_to_error, { desc = "Go To Next Error" })

-- Oil Mappings
vim.keymap.set("n", "-", require("oil").open, { desc = "Open parent directory." })

-- Lazygit Mappings
vim.keymap.set("n", "<leader>lg", "<cmd>LazyGit<cr>")

-- Telescope Mappings
local builtin = require "telescope.builtin"
vim.keymap.set("n", "<C-p>", builtin.git_files, {})
vim.keymap.set("n", "<leader>vh", builtin.help_tags, {})

-- Trouble Mappings
vim.keymap.set("n", "<leader>tq", "<cmd>Trouble quickfix<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>tx", "<cmd>Trouble diagnostics toggle<cr>")
vim.keymap.set(
  "n",
  "<leader>tX",
  "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
  { desc = "Trouble Show Diagnostics In File" }
)

-- UndoTree Mappings
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- Harpoon Mappings
local mark = require "harpoon.mark"
local ui = require "harpoon.ui"
vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

vim.keymap.set("n", "<C-h>", function()
  ui.nav_file(1)
end)
vim.keymap.set("n", "<C-t>", function()
  ui.nav_file(2)
end)
vim.keymap.set("n", "<C-n>", function()
  ui.nav_file(3)
end)
vim.keymap.set("n", "<C-s>", function()
  ui.nav_file(4)
end)

-- Floating Terminal Mappings
vim.keymap.set("n", "<leader>ft", "<cmd>FloatingTerminal<cr>i", { desc = "Toggle Floating Terminal" })
