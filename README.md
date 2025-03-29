# 💤 Jeo's LazyVim Config

This is my personal configuration for [LazyVim](https://github.com/LazyVim/LazyVim), built to enhance my Neovim experience.

## 📖 Getting Started

Refer to the [LazyVim documentation](https://lazyvim.github.io/installation) for general guidance on LazyVim.

## 🚀 Installation

To use this configuration, follow these steps:

1. **Install Neovim**  
   Ensure you have Neovim (v0.9 or later) installed. You can download it from [neovim.io](https://neovim.io/).

2. **Clone this Configuration**  
   Clone this repository into your Neovim configuration directory:
   ```bash
   git clone https://github.com/your-repo/lazyvim-config.git $env:LOCALAPPDATA\nvim
   ```

3. **Install Plugins**  
   Open Neovim, and Lazy.nvim will automatically install the required plugins. If it doesn’t, run:
   ```bash
   :Lazy sync
   ```

4. **Restart Neovim**  
   Restart Neovim to apply the configuration.

## 🛠️ Features

- **Custom Keymaps**: My personal keymap tweaks for productivity.
- **Plugin Management**: Powered by Lazy.nvim for fast and efficient plugin loading.
- **Lightweight Setup**: Focused on simplicity and performance.

## 🔧 Useful Commands

```bash
# Navigate to the Neovim configuration directory
cd $env:LOCALAPPDATA\nvim

# Sync plugins
nvim +Lazy sync
```

## 📝 Notes

This is a personal configuration and may not suit everyone's needs. Feel free to customize it to your liking!
