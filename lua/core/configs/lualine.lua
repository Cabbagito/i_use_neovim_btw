require("lualine").setup({
	options = {
		icons_enabled = true,
		theme = "solarized_light",
		-- Theme Picks
		--
		--    Dark   :      auto  -lol
		--   Light   :    onelight
		--
		--
		--   	Tier List
		--
		-- Tier / ColorSchemes
		--  S   / auto onelight(l) horizon powerline_dark dracula OceanicNext Tomorrow
		--  A   / ayu_light solarized_light
		-- <=B  / gruvbox_dark
		--  ^
		-- ups
		--
		--
		-------------------------------------------
		--
		--          Separators
		--
		--
		--
		--   { left = '', right = '' }
		--
		--   { left = '', right = '' }
		--
		--   { left = "", right = "" }
		--
		--   { left = "", right = "" }
		--
		--
		--
		-------------------------------------------
		--
		--        Sections
		--
		--
		--      buffers diagnostics fileformat filename filesize filetype hostname
		--
		--      location mode progress tabs windows
		--
		--
		--
		--
		--
		--
		--
		--
		--
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = {
			statusline = {},
			winbar = {},
		},
		ignore_focus = {},
		always_divide_middle = true,
		always_show_tabline = true,
		globalstatus = true,
		refresh = {
			statusline = 70,
			tabline = 70,
			winbar = 70,
		},
	},
	sections = {
		lualine_a = { "mode" },
		lualine_c = { { "filetype" } },
		lualine_b = { { "filename", path = 4 } },
		lualine_y = { "branch" },
		lualine_x = { "diagnostics" },
		lualine_z = {
			{
				"datetime",
				style = "%H:%M",
			},
		},
	},
	tabline = {},
	winbar = {},
	inactive_winbar = {},
	extensions = {},
})
