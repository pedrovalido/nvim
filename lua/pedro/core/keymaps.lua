-- vim.g.mapleader = " "
-- using lazy -> leader key has to be defined right after lazy is initialized
-- check plugins-setup.lua for the leader key definition

local keymap = vim.keymap -- for conciseness

--general keymaps

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set("i", "JK", "<ESC>", { desc = "Exit insert mode with JK" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { silent = true, desc = "Clear search highlights" })

keymap.set("n", "x", '"_x', { desc = "Delete character with x but dont copy to clipboard" })

keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number under cursor" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number under cursor" })

keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make split windows equal width" })
keymap.set("n", "<leader>sx", ":close<CR>", { desc = "Close current split window" })

keymap.set("n", "<leader>to", ":tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", ":tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", ":tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", ":tabp<CR>", { desc = "Go to previous tab" })

keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected lines up" })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected lines down" })

keymap.set("x", "<leader>p", '"_dP', { desc = "Paste on top of selected word without copying deleted word" })

keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Keep cursor in the middle of the page while moving down" })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Keep cursor in the middle of the page while moving up" })

keymap.set("n", "n", "nzzzv", { desc = "Keep searched terms in the middle" })
keymap.set("n", "N", "Nzzzv", { desc = "Keep searched terms in the middle" })

keymap.set("n", "§", "$", { desc = "go to end of line (useful for mac)" })
keymap.set("v", "§", "$", { desc = "go to end of line (useful for mac)" })
keymap.set(
	"i",
	"§",
	"<Esc>A",
	{ noremap = true, silent = true, desc = "go to the end of line in insert mode (useful for mac)" }
)

--plugin keymaps

--vim maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", { desc = "Maximize current window" })

--nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer" })

--telescope
keymap.set(
	"n",
	"<leader>ff",
	"<cmd>Telescope find_files<cr>",
	{ desc = "find files within current working directory, respects .gitignore" }
)
keymap.set(
	"n",
	"<leader>fs",
	"<cmd>Telescope live_grep<cr>",
	{ desc = "find string in current working directory as you type" }
)
keymap.set(
	"n",
	"<leader>fc",
	"<cmd>Telescope grep_string<cr>",
	{ desc = "find string under cursor in current working directory" }
)
keymap.set(
	"n",
	"<leader>fa",
	"<cmd>Telescope find_files follow=true no_ignore=true hidden=true <CR>",
	{ desc = "find file in all files including hidden files" }
)
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "list open buffers in current neovim instance" })
-- keymap.set("n", "<leader>ft", "<cmd>Telescope colorscheme<cr>") -- list available colorschemes
keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find TODOs" })
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "list available help tags" })

--copilot
vim.cmd([[imap <silent><script><expr> <C-a> copilot#Accept("\<CR>")]])
-- vim.g.copilot_no_tab_map = true
-- vim.keymap.set.keymap("i", "<C-a>", ":copilot#Accept('\\<CR>')<CR>", { silent = true })

-- keymap.set("n", "<leader>t", "<cmd>Lspsaga term_toggle<CR>") -- toggle floating terminal

keymap.set("n", "<leader>z", ":ZenMode<CR>", { desc = "toggle zen mode" })
