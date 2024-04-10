-- import mason plugin safely
local mason_status, mason = pcall(require, "mason")
if not mason_status then
	return
end

-- import mason-lspconfig plugin safely
local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
	return
end

-- import mason-null-ls plugin safely
-- local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
-- if not mason_null_ls_status then
-- 	return
-- end

local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
	return
end

-- enable mason
mason.setup()

mason_lspconfig.setup({
	-- list of servers for mason to install
	ensure_installed = {
		"tsserver",
		"html",
		"cssls",
		-- "tailwindcss",
		"lua_ls", --lua
		"bashls", --bash
		"jsonls", --json
		"jedi_language_server", --python
		-- "solang", --solidity (there are others)
		"solidity_ls_nomicfoundation", --solidity (there are others)
		-- "yamlls", --yaml
		"pyright", --python
	},
	-- auto-install configured servers (with lspconfig)
	-- automatic_installation = true, -- not the same as ensure_installed
})

lspconfig.solidity_ls_nomicfoundation.setup({
	cmd = { "nomicfoundation-solidity-language-server", "--stdio" },
	filetypes = { "solidity" },
	-- root_dir = lspconfig.util.find_git_ancestor,
	require("lspconfig.util").root_pattern("foundry.toml"),
	single_file_support = true,
})

-- mason_null_ls.setup({
-- 	-- list of formatters & linters for mason to install
-- 	ensure_installed = {
-- 		"prettier", -- ts/js formatter
-- 		"stylua", -- lua formatter
-- 		"eslint_d", -- ts/js linter
-- 	},
-- 	-- auto-install configured formatters & linters (with null-ls)
-- 	automatic_installation = true,
-- })
