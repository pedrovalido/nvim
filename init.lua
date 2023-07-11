-- plugins setup
require("pedro.plugins-setup")

-- plugins configs
require("pedro.plugins.nvim-web-devicons")
require("pedro.plugins.comment")
require("pedro.plugins.nvim-tree")
require("pedro.plugins.lualine")
require("pedro.plugins.telescope")
require("pedro.plugins.nvim-cmp")
require("pedro.plugins.autopairs")
require("pedro.plugins.treesitter")
require("pedro.plugins.gitsigns")
require("pedro.plugins.copilot")

-- plugin configs lsp
require("pedro.plugins.lsp.mason")
require("pedro.plugins.lsp.lspsaga")
require("pedro.plugins.lsp.lspconfig")
require("pedro.plugins.lsp.null-ls")

-- core setup
require("pedro.core.options")
require("pedro.core.keymaps")
require("pedro.core.colorscheme")
