-- vim.g.mapleader = " "
-- using lazy -> leader key has to be defined right after lazy is initialized
-- check plugins-setup.lua for the leader key definition

local keymap = vim.keymap -- for conciseness

--general keymaps

keymap.set("i", "jk", "<ESC>") --get out of insert mode with jk
keymap.set("i", "JK", "<ESC>") --get out of insert mode with JK

keymap.set("n", "<leader>nh", ":nohl<CR>", { silent = true }) --clear search highlights

keymap.set("n", "x", '"_x') --delete character with x but dont copy to clipboard

keymap.set("n", "<leader>sv", "<C-w>v") --split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") --split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") --make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") --close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") --open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab

keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- move selected line together
keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- move selected line together

keymap.set("x", "<leader>p", '"_dP') -- paste on top selected word without copying deleted word : theprimeagen

keymap.set("n", "<C-d>", "<C-d>zz") -- keep cursor in the middle of the page while moving down
keymap.set("n", "<C-u>", "<C-u>zz") -- keep cursor in the middle of the page while moving up

keymap.set("n", "n", "nzzzv") -- keep searched terms in the middle
keymap.set("n", "N", "Nzzzv") -- keep searched terms in the middle

keymap.set("n", "§", "$") -- go to end of line
keymap.set("v", "§", "$") -- go to end of line
keymap.set("i", "§", "<Esc>A", { noremap = true, silent = true }) -- go to end of line in insert mode

--plugin keymaps

--vim maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

--nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

--telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fa", "<cmd>Telescope find_files follow=true no_ignore=true hidden=true <CR>") -- find file in all files including hidden files
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>ft", "<cmd>Telescope colorscheme<cr>") -- list available colorschemes
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

--copilot
vim.cmd([[imap <silent><script><expr> <C-a> copilot#Accept("\<CR>")]])
-- vim.g.copilot_no_tab_map = true
-- vim.keymap.set.keymap("i", "<C-a>", ":copilot#Accept('\\<CR>')<CR>", { silent = true })

keymap.set("n", "<leader>t", "<cmd>Lspsaga term_toggle<CR>") -- toggle floating terminal

keymap.set("n", "<leader>z", ":ZenMode<CR>") -- toggle zen mode
