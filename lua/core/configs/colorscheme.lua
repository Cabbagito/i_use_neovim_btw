require("catppuccin").setup({
	flavour = "macchiato", -- latte, frappe, macchiato, mocha background = { -- :h background
		light = "latte",
		dark = "macchiato",
	transparent_background = true, -- disables setting the background color.
	show_end_of_buffer = true, -- shows the '~' characters after the end of buffers
	term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
	dim_inactive = {
		enabled = false, -- dims the background color of inactive window
		shade = "dark",
		percentage = 0.15, -- percentage of the shade to apply to the inactive window
	},
	no_italic = false, -- Force no italic
	no_bold = false, -- Force no bold
	no_underline = false, -- Force no underline
	styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
		comments = { "italic" }, -- Change the style of comments
		conditionals = { "italic" },
		loops = {},
		functions = {},
		keywords = {},
		strings = {},
		variables = {},
		numbers = {},
		booleans = {},
		properties = {},
		types = {},
		operators = {},
		-- miscs = {}, -- Uncomment to turn off hard-coded styles
	},
	color_overrides = {},
	custom_highlights = {},
	default_integrations = true,
	integrations = {
		cmp = true,
		gitsigns = true,
		nvimtree = true,
		treesitter = true,
		notify = false,
		mini = {
			enabled = true,
			indentscope_color = "",
		},
		-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
	},
})

require("tokyonight").setup({
	style = "storm", -- The theme comes in three styles, `storm`, a darker variant `night` and `day`
	light_style = "day", -- The theme is used when the background is set to light
	transparent = true, -- Enable this to disable setting the background color
	terminal_colors = true,
})

-- vim.g.everforest_transparent_background = 1
-- vim.g.everforest_better_performance = 1

-- vim.g.edge_transparent_background = 1
-- vim.g.edge_better_performance = 1

-- vim.g.sonokai_transparent_background = 1
vim.g.sonokai_style = "andromeda"
vim.g.sonokai_better_performance = 1

-- Favs
vim.cmd.colorscheme("catppuccin")
-- vim.cmd.colorscheme "tokyonight"
-- vim.cmd.colorscheme("sonokai")

-- Catppuccin
-- vim.cmd.colorscheme "catppuccin-macchiato"
-- vim.cmd.colorscheme("catppuccin-frappe")
-- vim.cmd.colorscheme "catppuccin-mocha"
-- vim.cmd.colorscheme "catppuccin-latte"

-- Tokyonight
-- vim.cmd.colorscheme "tokyonight-storm"
-- vim.cmd.colorscheme "tokyonight-moon"
-- vim.cmd.colorscheme "tokyonight-night"
-- vim.cmd.colorscheme "tokyonight-day"

-- Other
-- vim.cmd.colorscheme("everforest")
-- vim.cmd.colorscheme("edge")

vim.cmd([[
  " Set current line number to orange
  highlight CursorLineNr ctermfg=214 guifg=#ffaf00

  " Set normal line numbers to be more visible
  highlight LineNr ctermfg=250 guifg=#bcbcbc
]])
