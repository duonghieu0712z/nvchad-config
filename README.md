# My Neovim & NvChad Configuration

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
  - [`lua`](https://www.lua.org/download.html)
  - [`nodejs`](https://nodejs.org/en/download/) and `npm`
  - [`python3`](https://www.python.org/downloads/) and `pip3`
- Terminal with true color support.
- Use a [**`Nerd Font v3+`**](https://www.nerdfonts.com/) in your terminal emulator,
  make sure the nerd font you set doesn't end with **Mono** to present small icons.
  This config recommends [_Cascadia Code (Caskaydia Cove)_](https://github.com/microsoft/cascadia-code/releases)
  or [_Fira Code_](https://github.com/tonsky/FiraCode/wiki/Installing) fonts.
