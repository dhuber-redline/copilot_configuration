This README goes along with the init.lua file in this repository.
Prerequisites for neovim and GitHub Copilot setup:
- Neovim v0.10.0 or higher
- node.js for communication with GitHub
- GitHub Copilot plugin for Neovim
- (optional) Copilot Chat plugin for Neovim
- GitHub Copilot subscription

# Neovim Configuration with GitHub Copilot
This repository contains a Neovim configuration that integrates GitHub Copilot for AI-assisted coding. The configuration is designed to enhance your coding experience by providing intelligent code suggestions directly within Neovim.
To use this configuration, follow these steps:
1. **Install Neovim**: Make sure you have Neovim installed on your system. You can download it from [neovim.io](https://neovim.io/).
2. **Install GitHub Copilot Plugin**: Ensure you have the GitHub Copilot plugin for Neovim installed [copilot.vim](https://github.com/github/copilot.vim).
3. **Install Node.js**: GitHub Copilot requires Node.js to function. You can download and install it from [nodejs.org](https://nodejs.org/).```
4. **Install Neovim CopilotChat Plugin** (optional): If you want to use the Copilot Chat feature, you can install the [CopilotChat.nvim](https://github.com/CopilotC-Nvim/CopilotChat.nvim) plugin as well.
5. **Backup Existing Configuration**: If you have an existing Neovim configuration, it's a good idea to back it up before making any changes. You can do this by renaming your existing `~/.config/nvim` directory:
    ```bash
    mv ~/.config/nvim ~/.config/nvim_backup
    ```
6. **Clone the Repository**: Clone this repository to your local machine using Git:
    ```bash
    git clone git@github.com:dhuber-redline/copilot_configuration.git:~/.config/nvim
    ```
