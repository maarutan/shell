# ⚡ Zsh Configuration for Productivity and Vi-style Workflow

<table align="center">
  <tr>
    <td><img width="276"  alt="Image" src="https://github.com/user-attachments/assets/d9080751-cf6f-4de5-b923-de406177a756" /></td>
    <td>
        <p style="font-size:20px">
        <h2>links: </h2> <br/>
        <a href="#-directory-structure">🧩 Directory Structure</a><br/> 
        <a href="#%EF%B8%8F-configuration-explained">⚙️ Configuration Explained</a><br/>
        <a href="#-whats-preinstalled-with-zinit">🧠 Which plugins are pre-installed?</a><br/>
        <a href="#-dependencies">👾 Dependencies</a><br/>
        <a href="#-installation">🚀 Installation</a><br/>
        <a href="#-uninstallation">🗑 Uninstallation</a><br/>
        </p>
    </td>

  </tr>
</table>

This is my custom **Zsh configuration** optimized for **maximum productivity** and a **Vi-like experience** in the terminal. It's minimal, elegant, modular, and highly extensible.

---

## ✨ Why this config?

- ✅ Support for **multiple plugin managers** — use `zinit`, `zap`, `zplug`, or any other you prefer
- ✅ Lightweight and clean code structure
- ✅ Plug-and-play function system: just drop files in `functions/` and they get auto-loaded
- ✅ Fully modular plugin setup — easy to customize and extend
- ✅ ASCII art welcome screen via `beauty.zsh` (disable if you want)

---

## 🧩 Directory Structure

<details>
<summary>open and view the structure [ click 👆🏻]</summary>

```txt
.
├── aliases.zsh
├── beauty.zsh                  # ASCII welcome screen (optional)
├── environments.zsh
├── functions                   # Your custom functions
│   ├── func_init.zsh
│   └── yazi.zsh
├── init.zsh                    # Main entry point
├── keybindings.zsh
├── _plugin_managers_           # Plugin manager loaders
│   ├── plugin_manager_handler.zsh
│   └── _zinit_                 # Example: zinit setup
│       ├── load.zsh            # Initializes plugin manager
│       ├── plugin_list.zsh     # Declares plugin list
│       └── plugins_config      # Individual plugin configs
│           ├── abbreviation
│           │   ├── abbreviations.zsh
│           │   └── init.zsh
│           ├── fzf-tab
│           │   └── init.zsh
│           ├── init_plugins.zsh
│           ├── powerlevel10k
│           │   ├── init.zsh
│           │   └── prompts     # Prompt themes
│           │       ├── knife.zsh
│           │       ├── minimal.zsh
│           │       ├── norounded.zsh
│           │       └── rounded.zsh
│           ├── sudo
│           │   └── init.zsh
│           ├── zsh-autosuggestions
│           │   └── init.zsh
│           ├── zsh-fzf-history-search
│           │   └── init.zsh
│           └── zsh-vi-mode
│               └── init.zsh
├── README.md
├── src                         # Installers
│   ├── install.sh
│   └── uninstall.sh
└── zshrc                       # User Zsh entry file
```

## </details>

---

## ⚙️ Configuration Explained

### 🔹 [`src/` directory](#src-directory)

Contains installation and uninstallation scripts. Run them to set up or remove your config.

### 🔹 [`zshrc`](#zshrc)

Defines the Zsh configuration root and plugin manager. Example default setup:

```zsh
#!/usr/bin/env zsh
# -- Welcome to Zsh! --

export ZSH_CONFIG="$HOME/.config/zsh"  # Config directory
export ZSH_PLUGINS_MANAGER="zinit"     # Plugin manager

source "$ZSH_CONFIG/init.zsh"          # Load main config
```

### 🔹 [Custom Plugin Manager](#custom-plugin-manager)

To add your own plugin manager:

1. Go to `_plugin_managers_`
2. Create a folder: `_<your-plugin-name>_` (example: `_zinit_`)
3. Inside, add `load.zsh` — this file should handle plugin manager installation/setup

👉 [See example `load.zsh`](./_plugin_managers_/_zinit_/load.zsh)

To define plugin list, use `plugin_list.zsh`. Then, configure each plugin in `plugins_config/` (folder per plugin).

Plugins are initialized automatically by scanning for `init.zsh` in each plugin's folder.

Same logic applies to `functions/`: just drop a script or folder there — it will be sourced automatically.

---

## 🧠 What's Preinstalled with `zinit`

- [`zsh-vi-mode`](https://github.com/jeffreytse/zsh-vi-mode)
- [`fzf-tab`](https://github.com/Aloxaf/fzf-tab)
- [`zsh-autosuggestions`](https://github.com/zsh-users/zsh-autosuggestions)
- [`fast-syntax-highlighting`](https://github.com/zdharma-continuum/fast-syntax-highlighting)
- [`zsh-autopair`](https://github.com/hlissner/zsh-autopair)
- [`zsh-fzf-history-search`](https://github.com/joshskidmore/zsh-fzf-history-search)
- [`sudo`](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/sudo)
- [`powerlevel10k`](https://github.com/romkatv/powerlevel10k)
- [`abbreviation`](https://github.com/olets/zsh-abbr)

  > Well, there are some other minor things too.
  > 👉 [See example `plugin_list.zsh`](./_plugin_managers_/_zinit_/plugin_list.zsh)

All of these are preconfigured to provide the **best terminal workflow** out of the box.

---

## 🎨 [Prompt Themes](#prompt-themes)

Multiple themes are available for **Powerlevel10k** prompt inside:
[`./_plugin_managers_/_zinit_/plugins_config/powerlevel10k/prompts`](./_plugin_managers_/_zinit_/plugins_config/powerlevel10k/prompts)

Switch the theme by editing:
[`powerlevel10k/init.zsh`](./_plugin_managers_/_zinit_/plugins_config/powerlevel10k/init.zsh)

---

## 🤝 Contribute

Feel free to fork or suggest improvements!

Happy hacking in the terminal ⚡

---

## 📌 Related

- [Zinit Wiki](https://github.com/zdharma-continuum/zinit/wiki)
- [zsh-vi-mode Config](https://github.com/jeffreytse/zsh-vi-mode#configuration-function)
- [zsh-autopair Config](https://github.com/hlissner/zsh-autopair#configuration)
- [Powerlevel10k Config](https://github.com/romkatv/powerlevel10k#configuration)
- [fzf-tab Setup Guide](https://github.com/Aloxaf/fzf-tab#readme)
- [zsh-abbr](https://github.com/olets/zsh-abbr)

---

## 👾 Dependencies

### Tools for Zsh

- `fzf` - Command-line fuzzy finder for interactive file, command, and history search.
- `bat` - A `cat` clone with syntax highlighting, Git integration, and paging.
- `eza` - A modern replacement for `ls` with icons, Git info, and better formatting.
- `git` - Distributed version control system for managing source code repositories.
- `zoxide` - A smarter `cd` command that learns and prioritizes frequently visited directories.
- `z` - Directory jumper that tracks your most-used directories and lets you jump to them quickly.
- `chafa` - Terminal image viewer that converts images into colored ASCII/Unicode art.

---

### Tools for Your System

- `bash` - GNU Bourne Again SHell, a widely used Unix shell and command language.
- `zsh` - Extended Unix shell with scripting features, plugin support, and vi-mode.
- `curl` - Tool to transfer data from or to a server using protocols like HTTP, FTP, and more.

---

## 🚀 Installation

### Installation manual

```bash
git clone --depth 1 https://github.com/maarutan/shell.git ~/shell
cd ~/shell/src
sh ./install.sh
```

### Installation with curl

```bash
curl -sSL https://raw.githubusercontent.com/maarutan/shell/main/src/install.sh | sh
```

---

## 🗑 Uninstallation

### UnInstallation manual

```bash
git clone --depth 1 https://github.com/maarutan/shell.git ~/shell
cd ~/shell/src
sh ./uninstall.sh
rm -rf ~/shell
cd ~/
```

### UnInstallation with curl

```bash
curl -sSL https://raw.githubusercontent.com/maarutan/shell/main/src/uninstall.sh | sh
```

---

## 📝 License

See the [`LICENSE`](./LICENSE) file for terms.

---

> Built with ❤️ by [maarutan](https://github.com/maarutan) <br/>
> I wish you maximum productivity. ⚡⚡⚡
