vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ft", vim.cmd.Ex)

--Move blocks up and down
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Key bindings for diagnostics
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = "Show diagnostic message" })
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic" })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = "Go to next diagnostic" })

