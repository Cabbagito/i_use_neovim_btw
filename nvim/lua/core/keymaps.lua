vim.keymap.set("n", ";", ":", { noremap = true })

vim.keymap.set("n", "WW", ":w!<CR>", { desc = "Save buffer" })
vim.keymap.set("n", "QQ", ":q!<CR>", { desc = "Quit buffer" })

vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")

vim.keymap.set("n", "<leader>db", ":bdelete<CR>", { desc = "Delete buffer" })

vim.keymap.set("n", "<C-t>n", ":tabnew<CR>", { desc = "New tab" })
vim.keymap.set("n", "<C-t>w", ":tabclose<CR>", { desc = "Close tab" })
vim.keymap.set("n", "<Tab>", ":tabnext<CR>", { desc = "Next tab" })
vim.keymap.set("n", "<S-Tab>", ":tabprevious<CR>", { desc = "Previous tab" })
