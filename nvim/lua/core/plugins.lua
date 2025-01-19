require("lazy").setup({
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
	},
	"nvim-tree/nvim-web-devicons",
	"nvim-tree/nvim-tree.lua",
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig",
	"neovim/nvim-lspconfig",
	"nvim-treesitter/nvim-treesitter",
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{ "nvim-telescope/telescope-fzf-native.nvim", run = "make" },
		},
	},
	"nvim-telescope/telescope-ui-select.nvim",
	"nvimtools/none-ls.nvim",
	{
		"goolord/alpha-nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	"m4xshen/autoclose.nvim",
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{ "ThePrimeagen/vim-be-good", cmd = "VimBeGood" },
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	"simrat39/rust-tools.nvim",
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-nvim-lsp",
	{
		"L3MON4D3/LuaSnip",
		dependencies = {
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
		},
	},
	{ "supermaven-inc/supermaven-nvim" },
	{
		"stevearc/oil.nvim",
		---@module 'oil'
		---@diagnostic disable-next-line: undefined-doc-name
		---@type oil.SetupOpts
		opts = {},
		-- Optional dependencies
		-- dependencies = { { "echasnovski/mini.icons", opts = {} } },
		dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
		-- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
		lazy = false,
	},
	"folke/twilight.nvim",
	{
		"MeanderingProgrammer/render-markdown.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" }, -- if you prefer nvim-web-devicons
		---@module 'render-markdown'
		---@type render.md.UserConfig
		opts = {},
	},
	"Tyler-Barham/floating-help.nvim",
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{
		"karb94/neoscroll.nvim",
		opts = {},
	},
	{
		"gbprod/yanky.nvim",
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
	},
	{
		"folke/trouble.nvim",
		opts = {}, -- for default options, refer to the configuration section for custom setup.
		cmd = "Trouble",
		keys = {
			{
				"<leader>fd",
				"<cmd>Trouble diagnostics toggle<cr>",
				desc = "Find diagnostics",
			},
		},
	},
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
	},
})
