require("telescope").setup({
	-- pickers = {
	-- 	find_files = {
	-- 		theme = "ivy",
	-- 	},
	-- },
	extensions = {
		fzf = {},
	},
})

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find File" })
vim.keymap.set("n", "<leader>fw", builtin.live_grep, { desc = "Find Word" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find Buffer" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Find Help" })

vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Find Recent File" })
vim.keymap.set("n", "<leader>fc", builtin.commands, { desc = "Find Command" })
-- vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "Find Diagnostic" })
vim.keymap.set("n", "<leader>ft", ":TodoTelescope<CR>", { desc = "Find Todo" })
vim.keymap.set("n", "<leader>cs", builtin.colorscheme, { desc = "Find Colorscheme" })

vim.keymap.set("n", "<leader>nv", function()
	require("telescope.builtin").find_files({
		prompt_title = "Find Neovim File",
		cwd = vim.fn.stdpath("config"),
		hidden = true,
	})
end, { desc = "Neovim files" })

vim.keymap.set("n", "<leader>df", function()
	require("telescope.builtin").find_files({
		prompt_title = "Find Neovim File",
		cwd = "~/.config/",
		hidden = true,
	})
end, { desc = "Dotfiles" })
