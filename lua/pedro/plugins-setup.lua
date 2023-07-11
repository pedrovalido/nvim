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

	-- Install without configuration
	"projekt0n/github-nvim-theme",

	"christoomey/vim-tmux-navigator", --tmux && split window navigation

	"szw/vim-maximizer", --maximizes and restores current window

	--replace words faster
	"tpope/vim-surround", -- fetch words between chars faster
	"vim-scripts/ReplaceWithRegister", --replace a certain text with copied content

	--comment with gcc
	"numToStr/Comment.nvim",

	--file explorer duhh
	"nvim-tree/nvim-tree.lua",

	--icons
	"kyazdani42/nvim-web-devicons",

	--status line
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "kyazdani42/nvim-web-devicons" },
	},

	-- use({"vim-airline/vim-airline-themes"})
	-- use {
	--   "vim-airline/vim-airline",
	--   dependencies = { "vim-airline/vim-airline-themes" }
	-- }

	--fuzzy finding
	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	{ "nvim-telescope/telescope.nvim", branch = "0.1.x" },

	-- "NvChad/nvterm", -- terminal (replaced with lsp saga terminal for now)

	-- autocompletion
	"hrsh7th/nvim-cmp", -- completion plugin
	"hrsh7th/cmp-buffer", -- source for text in buffer
	"hrsh7th/cmp-path", -- source for file system paths

	-- snippets
	"L3MON4D3/LuaSnip", -- snippet engine
	"saadparwaiz1/cmp_luasnip", -- for autocompletion
	"rafamadriz/friendly-snippets", -- useful snippets

	-- managing & installing lsp servers, linters & formatters
	"williamboman/mason.nvim", -- in charge of managing lsp servers, linters & formatters
	"williamboman/mason-lspconfig.nvim", -- bridges gap b/w mason & lspconfig

	-- configuring lsp servers, linters and formatters
	"neovim/nvim-lspconfig", -- easily configure language servers
	"hrsh7th/cmp-nvim-lsp", -- for autocompletion
	{ "glepnir/lspsaga.nvim", branch = "main" }, -- enhanced lsp uis("jose-elias-alvarez/typescript.nvim"), -- additional functionality for typescript server (e.g. rename file & update imports)
	"onsails/lspkind.nvim", -- vs-code like icons for autocompletion

	-- helm plugins
	-- use("towolf/vim-helm") -- helm integration
	-- use("mrjosh/helm-ls")

	-- formatting & linting
	"jose-elias-alvarez/null-ls.nvim", -- configure formatters & linters
	"jayp0521/mason-null-ls.nvim", -- bridges gap b/w mason & null-ls

	-- treesitter configuration
	{
		"nvim-treesitter/nvim-treesitter",
		-- build = function()
		-- 	require("nvim-treesitter.install").update({ with_sync = true })
		-- end,
		build = ":TSUpdate",
		dependencies = "windwp/nvim-ts-autotag", -- autoclose parens, brackets, quotes, etc...
	},
	-- auto closing
	"windwp/nvim-autopairs",

	-- git integration
	"lewis6991/gitsigns.nvim", -- show line modifications on left hand side

	--github copilot
	"github/copilot.vim", -- uses OpenAI Codex to suggest code and entire functions in real-time
})
