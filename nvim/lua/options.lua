-- Options
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.o.number = true
vim.o.relativenumber = true

vim.o.signcolumn = 'yes'

vim.o.tabstop = 4
vim.o.shiftwidth = 4

vim.o.updatetime = 300

vim.o.termguicolors = true

-- keymap
vim.o.mouse = 'a'

vim.keymap.set("n", "<c-l>", ":Explore<CR>")

-- vim.keymap.set("n", "<c-l>", ":nohlsearch<CR>")
vim.keymap.set("n", "<c-e>", ":bwipeout<CR>")

vim.keymap.set("n", "<c-q>", ":q<CR>")
vim.keymap.set("n", "<c-s>", ":w<CR>")

vim.keymap.set("n", "<c-f>", ":Telescope find_files<CR>")
vim.keymap.set("n", "<c-b>", ":Telescope buffers<CR>")
vim.keymap.set("n", "<c-b>", ":Telescope buffers<CR>")

vim.keymap.set("n", "<c-Up>", ":m-2<CR>")
vim.keymap.set("n", "<c-Down>", ":m+<CR>")

