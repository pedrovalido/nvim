# NeoVim

> :warning: Work in Progress: This configuration is still under active development and may undergo significant changes. While every effort is made to ensure stability, please be aware that bugs and breaking changes may occur.
> 

Welcome to my personal NeoVim configuration! 
This repository provides a modern, feature-rich development environment right in your terminal. Whether you're a seasoned developer or a beginner looking for a versatile text editor setup, this configuration has got you covered.

This configuration is primarily written in Lua and harnesses the power of various plugins to provide features like autocompletion, syntax highlighting, git integration, and more.
The use of the Lazy.nvim plugin manager ensures a quick and straightforward setup process, allowing you to focus more on your coding and less on configuring your development environment.

Key features include:

- A carefully curated set of plugins that enhance your coding experience
- Out-of-the-box Language Server Protocol (LSP) support for better language understanding
- Robust git integration that visually represents your code modifications
- Fuzzy finding capabilities for quick file navigation
- An autocompletion setup that predicts and suggests code as you type
- Snippets support for efficient code generation
- Automatic handling and installation of dependencies via Lazy.nvim
- Whether you code in Python, JavaScript, Rust, or any other programming language, this NeoVim configuration aims to provide a robust and versatile development environment.

Feel free to use this as a starting point for your configuration or as an inspiration to customize your current setup. Happy coding!

# Installation

Please follow these steps to install and setup this NeoVim configuration:

Prerequisites: Ensure you have NeoVim installed on your system. If not, you can follow this [guide](https://github.com/neovim/neovim/wiki/Installing-Neovim) to install it.

Clone the repository: Clone this repository to your local machine using the following command in your terminal:
for Unix-based systems

```bash
git clone https://github.com/pedrovalido/nvim ~/.config/nvim
```

for Windows systems

```bash
git clone https://github.com/pedrovalido/nvim ~/AppData/Local/nvim/
```

Install Lazy.nvim (the plugin manager): This configuration uses the Lazy.nvim plugin manager.
If you don't have it installed, the configuration will automatically install it for you on the first run.
If you wish to install it manually, follow the instructions in the [Lazy.nvim repository](https://github.com/folke/lazy.nvim).

Install plugins: Start NeoVim, the plugins specified in the configuration will be automatically installed by Lazy.nvim.

# Detailed Plugin Documentation

Here are the details of the plugins used in this NeoVim configuration:

- **`nvim-lua/plenary.nvim`**: A plugin that provides utility functions and classes which can be useful in developing other plugins or configuring NeoVim.
- **`bluz71/vim-nightfly-guicolors`** & **`ellisonleao/gruvbox.nvim`**: These plugins set the color scheme of your NeoVim editor.
- **`projekt0n/github-nvim-theme`**: This is a color scheme that mirrors the default color theme of GitHub.
- **`christoomey/vim-tmux-navigator`**: This plugin enables seamless navigation between tmux panels and vim split windows.
- **`szw/vim-maximizer`**: Maximizer provides a command to maximize and restore the current window in Vim.
- **`tpope/vim-surround`** & **`vim-scripts/ReplaceWithRegister`**: These plugins provide functionality to change, delete, and add 'surroundings' like parentheses, brackets, quotes, XML tags, etc. The latter allows you to replace a certain text with copied content.
- **`numToStr/Comment.nvim`**: This plugin allows you to easily comment and uncomment lines of code using the **`gcc`** command.
- **`nvim-tree/nvim-tree.lua`**: A file explorer plugin that provides an easy way to navigate between different files and directories.
- **`kyazdani42/nvim-web-devicons`**: This plugin provides icons for different file types, which can be displayed in the status line or the file explorer.
- **`nvim-lualine/lualine.nvim`**: This plugin provides a customizable status line.
- **`nvim-telescope/telescope.nvim`**: A highly extensible fuzzy finder over lists that integrates with many other plugins and provides a smooth workflow for finding and replacing text, files, and much more.
- **`hrsh7th/nvim-cmp`**: A powerful autocompletion plugin that integrates with other plugins to provide contextual suggestions while you're typing.
- **`L3MON4D3/LuaSnip`** & **`rafamadriz/friendly-snippets`**: These plugins provide support for code snippets, which are templates of commonly-used code that you can insert into your file.
- **`williamboman/mason.nvim`** & **`neovim/nvim-lspconfig`**: These plugins provide Language Server Protocol (LSP) support, making it easier to get features like autocompletion, go to definition, and syntax checking for your programming language of choice.
- **`glepnir/lspsaga.nvim`**: An enhancement of the built-in LSP, providing many UI improvements.
- **`jose-elias-alvarez/null-ls.nvim`**: This plugin allows NeoVim to use any program as a language server, allowing for things like formatting and linting.
- **`nvim-treesitter/nvim-treesitter`**: This plugin provides syntax highlighting, indentation, and more, based on the Tree-sitter parsing library.
- **`windwp/nvim-autopairs`**: This plugin automatically pairs brackets, quotes, and other characters.
- **`lewis6991/gitsigns.nvim`**: This plugin provides git decorations in the sign column and stages hunks, among other features.
- **`github/copilot.vim`**: This plugin integrates with GitHub's Copilot service to provide AI-powered code suggestions.
