local keymap = vim.keymap.set
local command = vim.cmd

-- Leader
vim.g.mapleader = " "

-- File Explorer
keymap("n", "<leader>e", command.NvimTreeFindFileToggle)

-- Lazygit
keymap("n", "<leader>gg", command.LazyGit)

-- Telescope
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap("n", "<leader>fs", "<cmd>Telescope grep_string<cr>")

-- Window Navigation
keymap("n", "<c-k>", ":wincmd k<CR>")
keymap("n", "<c-j>", ":wincmd j<CR>")
keymap("n", "<c-h>", ":wincmd h<CR>")
keymap("n", "<c-l>", ":wincmd l<CR>")

-- Tabs
keymap("n", "<leader>tn", command.tabnew)
keymap("n", "<leader>tm", command.tabclose)
keymap("n", "<leader>th", command.tabp)
keymap("n", "<leader>tl", command.tabn)

-- Split
keymap("n", "<leader>ss", command.close)

-- Terminal
keymap("n", "<leader>tt", command.terminal)
keymap("t", "<Esc>", [[<C-\><C-n>]], { noremap = true })

