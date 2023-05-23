-- local status, _ = pcall(vim.cmd, "colorscheme nightfly")
local status, _ = pcall(vim.cmd, "colorscheme gruvbox")
-- local status, _ = pcall(vim.cmd, "colorscheme github_light_default") -- light theme for bright days -- check https://github.com/projekt0n/github-nvim-theme for more themes

if not status then
	print("colorscheme not found!")
	return
end
