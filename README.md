# My Neovim & NvChad Configuration

- [My Neovim \& NvChad Configuration](#my-neovim--nvchad-configuration)
  - [Introduction](#introduction)
  - [Preview](#preview)
  - [Features](#features)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Uninstall](#uninstall)
  - [Get healthy](#get-healthy)
  - [Update NvChad](#update-nvchad)
  - [Markdown preview setup](#markdown-preview-setup)
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

## Preview

<!-- markdownlint-disable html -->
<details><summary>Click to expand</summary>

![nv-dash](https://github.com/DuongHieu0712z/nvchad-config/assets/60064664/7674dfec-9ce4-4923-a699-2c6d04d4079f)
![cheatsheet](https://github.com/DuongHieu0712z/nvchad-config/assets/60064664/5056b52c-5228-4ef4-a6db-17d638599be2)
![lazy](https://github.com/DuongHieu0712z/nvchad-config/assets/60064664/50b6bc5d-a70f-45c1-a7a8-1555549daba3)
![mason1](https://github.com/DuongHieu0712z/nvchad-config/assets/60064664/a20f9ab7-6bf1-4d69-ab33-25aac208cdba)
![mason2](https://github.com/DuongHieu0712z/nvchad-config/assets/60064664/b477bc0f-da4e-4a1f-87ab-7405baedb7d5)
![telescope](https://github.com/DuongHieu0712z/nvchad-config/assets/60064664/8f10ed31-9af5-45f0-a00f-0605c0dc97dd)
![file](https://github.com/DuongHieu0712z/nvchad-config/assets/60064664/e6d94fb6-1fb9-46d7-8248-a55528bedb59)
![chatgpt](https://github.com/DuongHieu0712z/nvchad-config/assets/60064664/e3f8a1ad-36e7-4080-8144-9a4b5cd8ff95)
![nvimtree](https://github.com/DuongHieu0712z/nvchad-config/assets/60064664/40c4e41e-7205-4dbd-995a-6d3564cc6217)
![search](https://github.com/DuongHieu0712z/nvchad-config/assets/60064664/d8882e49-f474-49e5-abdc-a99f2c75192c)
![cmdline](https://github.com/DuongHieu0712z/nvchad-config/assets/60064664/471122eb-2237-425c-af62-446cd1930723)
![symboloutline](https://github.com/DuongHieu0712z/nvchad-config/assets/60064664/e7520515-c798-4ae3-b7c3-2f608556f6f8)
![code](https://github.com/DuongHieu0712z/nvchad-config/assets/60064664/3d8167ba-a1d2-469f-b0b2-48c05bd423cc)
![theme](https://github.com/DuongHieu0712z/nvchad-config/assets/60064664/bd4cc832-314a-460f-b383-aab728741920)

</details>
<!-- markdownlint-enable html -->

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
- UI with [dressing](https://github.com/stevearc/dressing.nvim) and [nui](https://github.com/MunifTanjim/nui.nvim)
- Diff view with [diffview.nvim](https://github.com/sindrets/diffview.nvim)
- Indent guide with [indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- Comment with [Comment.nvim](https://github.com/numToStr/Comment.nvim)
- Key mapping with [which-key](https://github.com/folke/which-key.nvim)
- Variable highlight with [vim-illuminate](https://github.com/RRethy/vim-illuminate)
- Surround with [nvim-surround](https://github.com/kylechui/nvim-surround)
- Folding with [nvim-ufo](https://github.com/kevinhwang91/nvim-ufo)
- Status column with [statuscol.nvim](https://github.com/luukvbaal/statuscol.nvim)
- Symbols outline with [symbols-outline.nvim](https://github.com/simrat39/symbols-outline.nvim)
- Winbar code context with [nvim-navic](https://github.com/SmiteshP/nvim-navic)
- Trouble with [Trouble](https://github.com/folke/trouble.nvim)
- Notification with [noice](https://github.com/folke/noice.nvim) and [notify](https://github.com/rcarriga/nvim-notify)
- Easy motion with [hop](https://github.com/phaazon/hop.nvim)
- Smooth scroll with [neoscroll.nvim](https://github.com/karb94/neoscroll.nvim)
- Guess indent with [indent-o-matic](https://github.com/Darazaki/indent-o-matic)
- Markdown preview with [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)
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
  - File compression: `unzip`, `gzip`, `tar`, `7zip`, ... (optional)
  - [`lua`](https://www.lua.org/download.html)
  - [`nodejs`](https://nodejs.org/en/download/), `npm` and `yarn`
  - [`python3`](https://www.python.org/downloads/) and `pip3`
  - [`ripgrep`](https://github.com/BurntSushi/ripgrep) or
    [`fd`](https://github.com/sharkdp/fd) for
    live grep Telescope search
- Terminal with true color support.
- Use a [**`Nerd Font v3+`**](https://www.nerdfonts.com/) in your terminal emulator,
  make sure the nerd font you set doesn't end with **Mono** to present small icons.
  This config recommends [_Cascadia Code (Caskaydia Cove)_](https://github.com/microsoft/cascadia-code/releases)
  or [_Fira Code_](https://github.com/tonsky/FiraCode/wiki/Installing) fonts.
- Delete old custom NvChad config folder
  (check [uninstall](#uninstall) commands below).

## Install

```bash
# Linux/macOS
git clone https://github.com/DuongHieu0712z/nvchad-config.git ~/.config/nvim/lua/custom
```

```powershell
# Windows (Powershell)
git clone https://github.com/DuongHieu0712z/nvchad-config.git ~\AppData\Local\nvim\lua\custom
```

## Uninstall

> **_Note_**: These commands only delete this config, not NvChad config.
> To delete NvChad config, please go [here](https://nvchad.com/docs/quickstart/install#uninstall).

```bash
# Linux/macOS
rm -rf ~/.config/nvim/lua/custom
rm -rf ~/.local/share/nvim
rm -rf ~/.cache/nvim
```

```powershell
# Windows (Powershell)
rm -r -fo ~\AppData\Local\nvim\lua\custom
rm -r -fo ~\AppData\Local\nvim-data
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

## Markdown preview setup

If you build `markdown-preview.nvim` get error, you can fix it by:

- Change to `markdown-preview.nvim` directory:

  ```bash
  # Linux/macOS
  cd ~/.local/share-nvim/lazy/markdown-preview.nvim
  ```

  ```powershell
  # Windows (Powershell)
  cd ~\AppData\Local\nvim-data\lazy\markdown-preview.nvim
  ```

- Build plugin:

  ```bash
  yarn install
  yarn build
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

> **_Note_**: You can use passphrase for security,
> but I recommend not using passphrase for convenience.

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
