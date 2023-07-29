# My Neovim & NvChad Configuration

- [My Neovim \& NvChad Configuration](#my-neovim--nvchad-configuration)
  - [Introduction](#introduction)
  - [Features](#features)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
    - [Linux/macOS](#linuxmacos)
    - [Windows (Powershell)](#windows-powershell)
  - [Uninstall](#uninstall)
    - [Linux/macOS](#linuxmacos-1)
    - [Windows (Powershell)](#windows-powershell-1)
  - [Get healthy](#get-healthy)
  - [Update NvChad](#update-nvchad)
  - [ChatGPT secret management](#chatgpt-secret-management)
  - [Codium authentication](#codium-authentication)

## Introduction

This repo hosts my Neovim and NvChad configuration for Linux, macOS, and Windows.

This configuration is written as clearly as possible. You can clone the entire
repository and use it, but this is not recommended. The best configuration is
personal, so everyone should have their own unique configuration. You are encouraged
to clone from this repo the part you want and add it to your config.

To reduce the possibility of damage, this configuration is only maintained for
[the latest Neovim stable release](https://github.com/neovim/neovim/releases/tag/stable)
and [the latest NvChad](https://nvchad.com/docs/quickstart/install).
No effort is required to maintain backward compatibility.

## Features

- Plugins management with [Lazy.nvim](https://github.com/folke/lazy.nvim)
- File explorer with [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)
- Fuzzy finding with [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- Syntax highlighting with [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- Git integration with [Gitsigns](https://github.com/lewis6991/gitsigns.nvim)
- Code completion with [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- Language Server Protocol with [Native LSP](https://github.com/neovim/nvim-lspconfig)
- Debug Adapter Protocol with [nvim-dap](https://github.com/mfussenegger/nvim-dap)
- Linting and formatting with [Null-ls](https://github.com/jose-elias-alvarez/null-ls.nvim)
- LSP servers, DAP servers, linters and formatters management with [mason](https://github.com/williamboman/mason.nvim)
- Indent guide with [indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- Comment with [Comment.nvim](https://github.com/numToStr/Comment.nvim)
- Key mapping with [which-key](https://github.com/folke/which-key.nvim)
- Variable highlight with [vim-illuminate](https://github.com/RRethy/vim-illuminate)
- Surround with [nvim-surround](https://github.com/kylechui/nvim-surround)
- Folding with [pretty-fold.nvim](https://github.com/anuvyklack/pretty-fold.nvim)
- Symbols outline with [symbols-outline.nvim](https://github.com/simrat39/symbols-outline.nvim)
- Winbar code context with [nvim-navic](https://github.com/SmiteshP/nvim-navic)
- Trouble with [Trouble](https://github.com/folke/trouble.nvim)
- Notification with [noice](https://github.com/folke/noice.nvim) and [notify](https://github.com/rcarriga/nvim-notify)
- Easy motion with [hop](https://github.com/phaazon/hop.nvim)
- Smooth scroll with [cinnamon.nvim](https://github.com/declancm/cinnamon.nvim)
- Guess indent with [indent-o-matic](https://github.com/Darazaki/indent-o-matic)
- AI chat with [Chat GPT](https://github.com/jackMort/ChatGPT.nvim)
- AI code generator with [Codeium](https://github.com/Exafunction/codeium.vim)

## Prerequisites

- Make sure you have installed the latest version of
  [**`Neovim v0.9+`**](https://github.com/neovim/neovim/wiki/Installing-Neovim).
- Have installed [**`NvChad v2.0`**](https://nvchad.com/docs/quickstart/install).
- Have Installed [**`Neovide`**](https://neovide.dev/installation.html)
  (optional, if using Neovide as Neovim GUI).
- Have the following programs installed on your system:
  - [`git`](https://git-scm.com/downloads)
  - `make`
  - `curl`, `wget`
  - `unzip`, `gzip`, `tar`, `7zip`,...
  - [`lua`](https://www.lua.org/download.html)
  - [`nodejs`](https://nodejs.org/en/download/) and `npm`
  - [`python3`](https://www.python.org/downloads/) and `pip3`
  - [`ripgrep`](https://github.com/BurntSushi/ripgrep) or
    [`fd`](https://github.com/sharkdp/fd) -
    live grep Telescope search
- Terminal with true color support.
- Use a [**`Nerd Font v3+`**](https://www.nerdfonts.com/) in your terminal emulator,
  make sure the nerd font you set doesn't end with **Mono** to present small icons.
  This config recommends [_Cascadia Code (Caskaydia Cove)_](https://github.com/microsoft/cascadia-code/releases)
  or [_Fira Code_](https://github.com/tonsky/FiraCode/wiki/Installing) fonts.
- Delete old custom NvChad config folder
  (check [uninstall](#uninstall) commands below).

## Install

### Linux/macOS

```bash
git clone https://github.com/DuongHieu0712z/nvchad-config.git ~/.config/nvim/lua/custom
```

### Windows (Powershell)

```pwsh
git clone https://github.com/DuongHieu0712z/nvchad-config.git $env:LOCALAPPDATA\nvim\lua\custom
```

## Uninstall

> **_Note_**: These commands only delete this config, not NvChad config.
> To delete NvChad config, please go [here](https://nvchad.com/docs/quickstart/install#uninstall).

### Linux/macOS

```bash
rm -rf ~/.config/nvim/lua/custom
rm -rf ~/.local/share/nvim
rm -rf ~/.cache/nvim
```

### Windows (Powershell)

```pwsh
rm -r -fo $env:LOCALAPPDATA\nvim\lua\custom
rm -r -fo $env:LOCALAPPDATA\nvim-data
```

## Get healthy

Open `nvim` and enter the following:

```vim
:checkhealth
```

You'll probably notice you don't have support for copy/paste also that `python`
and `node` haven't been setup.

So let's fix that.

First, we'll fix copy/paste:

- On macOS, `pbcopy` should be builtin.
- On Ubuntu:

  ```bash
  sudo apt install xsel # for X11
  sudo apt install wl-clipboard # for wayland
  ```

Next, we need to install `python` and `node` support:

- `Neovim python` support:

  ```bash
  pip install pynvim
  ```

- `Neovim node` support:

  ```bash
  npm i -g neovim
  ```

## Update NvChad

To update NvChad to the latest version

```vim
:NvChadUpdate
```

## ChatGPT secret management

Get an API key from OpenAI, which you can [obtain here](https://platform.openai.com/account/api-keys).
Save API key to file `openai.txt` in your `$HOME` folder.

Generate a new GPG key if you haven't, follow the instructions
[here](https://docs.github.com/en/authentication/managing-commit-signature-verification/generating-a-new-gpg-key).
After generate, use the follow command to encrypt file `openai.txt`
in your `$HOME` folder:

```bash
gpg -e openai.txt -r <USER-ID>
```

If the previous command run successfully, a new filename `openai.txt.gpg` will be
generated in your `$HOME` folder.

The following configuration would use GPG to decrypt a local file containing
the API key in file `custom/configs/chatgpt.lua`:

```lua
local home = vim.fn.expand "$HOME"

local M = {
  api_key_cmd = "gpg -d " .. home .. "/openai.txt.gpg",
}

return M
```

## Codium authentication

When start Neovim, run `:Codeium Auth` to set up the plugin and
start using Codeium.

Copy the token from your browser and paste it into API token request.

Use `Ctrl-R *` or `Ctrl-R +`, to paste the token into Popup.
