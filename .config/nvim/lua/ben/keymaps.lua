local keymap = vim.keymap.set

-- Leader
vim.g.mapleader = " "

-- File Explorer
keymap("n", "<leader>e", vim.cmd.NvimTreeToggle)

-- Window Navigation
keymap("n", "<c-k>", ":wincmd k<CR>")
keymap("n", "<c-j>", ":wincmd j<CR>")
keymap("n", "<c-h>", ":wincmd h<CR>")
keymap("n", "<c-l>", ":wincmd l<CR>")

-- Tab Navigation
keymap("n", "<leader>to", ":tabnew<CR>")
keymap("n", "<leader>tx", ":tabclose<CR>")
keymap("n", "<leader>tm", ":tabn<CR>")
keymap("n", "<leader>tn", ":tabp<CR>")

-- Terminal Toggle
keymap("n", "<leader>tt", ":Lspsaga term_toggle<CR>")

-- Git Toggle
keymap("n", "<leader>lg", ":LazyGit<CR>")
