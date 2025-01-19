local alpha = require("alpha")
local dashboard = require("alpha.themes.startify")

dashboard.section.header.opts.position = "center"
-- Center all buttons
local function center_button(b)
	b.opts.position = "center"
	b.opts.align_shortcut = "center"
	return b
end

dashboard.section.top_buttons.val = {
	center_button(dashboard.button("e", "New file", "<cmd>ene <CR>")),
}

-- Center MRU sections
dashboard.section.mru.val[2].opts.position = "center" -- MRU title
dashboard.section.mru_cwd.val[2].opts.position = "center" -- MRU CWD title

-- Center bottom buttons
dashboard.section.bottom_buttons.val = {
	center_button(dashboard.button("q", "Quit", "<cmd>q <CR>")),
}

dashboard.config.opts.margin = 35 -- You can adjust this value

-- Center all groups
for _, section in ipairs(dashboard.config.layout) do
	if section.type == "group" then
		section.opts = section.opts or {}
		section.opts.position = "center"
	end
end

dashboard.section.header.val = {
	[[                                   ▄█                                                                  ]],
	[[▀███▀▀▀██▄   ▄▄█▀▀██▄ ▀███▄   ▀███▀█████▀▀██▀▀███   ▀███▀▀▀██▄      ██     ▀███▄   ▀███▀████▀ ▄▄█▀▀▀█▄█]],
	[[  ██    ▀██▄██▀    ▀██▄ ███▄    █  ▀▀█▀   ██   ▀█     ██   ▀██▄    ▄██▄      ███▄    █   ██ ▄██▀     ▀█]],
	[[  ██     ▀███▀      ▀██ █ ███   █         ██          ██   ▄██    ▄█▀██▄     █ ███   █   ██ ██▀       ▀]],
	[[  ██      ███        ██ █  ▀██▄ █         ██          ███████    ▄█  ▀██     █  ▀██▄ █   ██ ██         ]],
	[[  ██     ▄███▄      ▄██ █   ▀██▄█         ██          ██         ████████    █   ▀██▄█   ██ ██▄        ]],
	[[  ██    ▄██▀██▄    ▄██▀ █     ███         ██          ██        █▀      ██   █     ███   ██ ▀██▄     ▄▀]],
	[[▄████████▀   ▀▀████▀▀ ▄███▄    ██       ▄████▄      ▄████▄    ▄███▄   ▄████▄███▄    ██ ▄████▄ ▀▀█████▀]],
}

dashboard.config.layout[1].val = 5 -- Increase this number to move the art down


vim.api.nvim_set_hl(0, "DashboardLogo", { fg = "#ee9550" })
-- Green = #b3f2b6
-- Pink = #f2b3ef
-- Purple = #db8cd7
-- Orange = #ee9550

dashboard.section.header.opts.hl = "DashboardLogo"

alpha.setup(dashboard.opts)


vim.keymap.set('n', '<leader>hs', ':Alpha<CR>', { desc = 'Homescreen' })
