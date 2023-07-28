# My Neovim & NvChad Configuration

- [My Neovim \& NvChad Configuration](#my-neovim--nvchad-configuration)
  - [Introduction](#introduction)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
    - [Linux/macOS](#linuxmacos)
    - [Windows (Powershell)](#windows-powershell)
  - [Uninstall](#uninstall)
    - [Linux/macOS](#linuxmacos-1)
    - [Windows (Powershell)](#windows-powershell-1)
  - [Get healthy](#get-healthy)
  - [Update NvChad](#update-nvchad)

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
