# NeoVim

:warning: Work in Progress: This configuration is still under active development and may undergo significant changes. While every effort is made to ensure stability, please be aware that bugs and breaking changes may occur.

Welcome to my personal NeoVim configuration! This repository provides a modern, feature-rich development environment right in your terminal. Whether you're a seasoned developer or a beginner looking for a versatile text editor setup, this configuration has got you covered.

This configuration is primarily written in Lua and harnesses the power of various plugins to provide features like autocompletion, syntax highlighting, git integration, and more. The use of the Lazy.nvim plugin manager ensures a quick and straightforward setup process, allowing you to focus more on your coding and less on configuring your development environment.

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

(Keep in mind this is a work in progress)

# Installation

Please follow these steps to install and setup this NeoVim configuration:

Prerequisites: Ensure you have NeoVim installed on your system. If not, you can follow this guide<https://github.com/neovim/neovim/wiki/Installing-Neovim> to install it.

Clone the repository: Clone this repository to your local machine using the following command in your terminal:
for Unix-based systems
git clone https://github.com/pedrovalido/nvim ~/.config/nvim
for Windows system
git clone https://github.com/pedrovalido/nvim ~/AppData/Local/nvim/

Install Lazy.nvim (the plugin manager): This configuration uses the Lazy.nvim plugin manager.
If you don't have it installed, the configuration will automatically install it for you on the first run.
If you wish to install it manually, follow the instructions in the Lazy.nvim repository<https://github.com/folke/lazy.nvim>.

Install plugins: Start NeoVim, the plugins specified in the configuration will be automatically installed by Lazy.nvim.
