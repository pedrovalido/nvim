local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Install your plugins here
require("lazy").setup({
	-- My plugins here

	--Plugin that other plugins use
	"nvim-lua/plenary.nvim",

	--Colorscheme
	"bluz71/vim-nightfly-guicolors", --preferred coloscheme
	"ellisonleao/gruvbox.nvim",
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	"navarasu/onedark.nvim",

	"projekt0n/github-nvim-theme",

	-- Install without configuration
	"christoomey/vim-tmux-navigator", --tmux && split window navigation

	"szw/vim-maximizer", --maximizes and restores current window

	--shows keymaps in a popup
	{
		"folke/which-key.nvim",
		--- allow plugin to load lazily
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 500
		end,
	},

	--replace words faster
	"tpope/vim-surround", -- fetch words between chars faster
	"vim-scripts/ReplaceWithRegister", --replace a certain text with copied content

	--comment with gcc
	{ "numToStr/Comment.nvim", event = { "BufReadPre", "BufNewFile" } },

	--todo comments
	{ "folke/todo-comments.nvim", event = { "BufReadPre", "BufNewFile" }, dependencies = "nvim-lua/plenary.nvim" },

	--file explorer
	"nvim-tree/nvim-tree.lua",

	-- edit something in a pretty way (edit files in explorer, there is more)
	{ "stevearc/dressing.nvim", event = "VeryLazy" },

	--icons
	"kyazdani42/nvim-web-devicons",

	--status line
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "kyazdani42/nvim-web-devicons" },
	},

	--bufferline
	{
		"akinsho/nvim-bufferline.lua",
		dependencies = "nvim-tree/nvim-web-devicons",
		version = "*",
		opts = {
			options = {
				mode = "tabs",
				separator_style = "slant",
			},
		},
	},

	--fuzzy finding
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
			"nvim-tree/nvim-web-devicons",
			"folke/todo-comments.nvim",
		},
	},

	-- autocompletion
	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		dependencies = {
			"hrsh7th/cmp-buffer", -- source for text in buffer
			"hrsh7th/cmp-path", -- source for file system paths
			{
				"L3MON4D3/LuaSnip",
				-- follow latest release.
				version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
				-- install jsregexp (optional!).
				build = "make install_jsregexp",
			},
			"saadparwaiz1/cmp_luasnip", -- for autocompletion
			"rafamadriz/friendly-snippets", -- useful snippets
			"onsails/lspkind-nvim", --vs-code like pictograms
		},
	},

	-- managing & installing lsp servers, linters & formatters
	{
		"williamboman/mason.nvim", -- in charge of managing lsp servers, linters & formatters
		dependencies = {
			"williamboman/mason-lspconfig.nvim", -- bridges gap b/w mason & lspconfig
		},
	},

	-- configuring lsp servers, linters and formatters
	{
		"neovim/nvim-lspconfig", -- easily configure language servers
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"hrsh7th/cmp-nvim-lsp", -- for autocompletion
			{ "antosha417/nvim-lsp-file-operations", config = true },
			{ "folke/neodev.nvim", opts = {} },
		},
	},
	{ "glepnir/lspsaga.nvim", branch = "main" }, -- enhanced lsp uis
	"jose-elias-alvarez/typescript.nvim", -- additional functionality for typescript server (e.g. rename file & update imports)
	"onsails/lspkind.nvim", -- vs-code like icons for autocompletion

	-- formatting & linting
	"jose-elias-alvarez/null-ls.nvim", -- configure formatters & linters
	"jayp0521/mason-null-ls.nvim", -- bridges gap b/w mason & null-ls
	"vyperlang/vim-vyper", -- vyper syntax HLer

	-- treesitter configuration
	{
		"nvim-treesitter/nvim-treesitter",
		event = { "BufReadPre", "BufNewFile" },
		build = ":TSUpdate",
		dependencies = "windwp/nvim-ts-autotag", -- autoclose parens, brackets, quotes, etc...
	},

	-- auto closing
	{ "windwp/nvim-autopairs", event = "InsertEnter", dependencies = "hrsh7th/nvim-cmp" },

	-- git integration
	"lewis6991/gitsigns.nvim", -- show line modifications on left hand side

	--github copilot
	"github/copilot.vim", -- uses OpenAI Codex to suggest code and entire functions in real-time

	"folke/zen-mode.nvim", -- zen mode for nvim
})
