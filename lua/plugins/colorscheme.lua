-- Colorscheme plugins
-- All theme-related plugins and their configurations

return {
	-- Catppuccin (primary theme)
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "macchiato",
				background = {
					light = "latte",
					dark = "macchiato",
				},
				transparent_background = true,
				show_end_of_buffer = true,
				term_colors = true,
				dim_inactive = {
					enabled = false,
					shade = "dark",
					percentage = 0.15,
				},
				no_italic = false,
				no_bold = false,
				no_underline = false,
				styles = {
					comments = { "italic" },
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
				},
			})

			-- Set colorscheme
			vim.cmd.colorscheme("catppuccin")

			-- Custom highlights
			vim.cmd([[
        " Set current line number to orange
        highlight CursorLineNr ctermfg=214 guifg=#ffaf00

        " Set normal line numbers to be more visible
        highlight LineNr ctermfg=250 guifg=#bcbcbc
      ]])
		end,
	},

	-- Tokyo Night
	{
		"folke/tokyonight.nvim",
		lazy = true,
		config = function()
			require("tokyonight").setup({
				style = "storm",
				light_style = "day",
				transparent = true,
				terminal_colors = true,
			})
		end,
	},

	-- Everforest
	{
		"sainnhe/everforest",
		lazy = true,
		config = function()
			vim.g.everforest_transparent_background = 1
			vim.g.everforest_better_performance = 1
		end,
	},

	-- Edge
	{
		"sainnhe/edge",
		lazy = true,
		config = function()
			vim.g.edge_transparent_background = 1
			vim.g.edge_better_performance = 1
		end,
	},

	-- Sonokai
	{
		"sainnhe/sonokai",
		lazy = true,
		config = function()
			vim.g.sonokai_transparent_background = 1
			vim.g.sonokai_style = "andromeda"
			vim.g.sonokai_better_performance = 1
		end,
	},
}
