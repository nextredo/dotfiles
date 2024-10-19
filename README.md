# Dotfiles

## Requirements

Ensure the following are installed:

- GNU Stow
- Git
- zsh
  - Oh My Zsh
- alacritty
  - alacritty-theme
- gdb

### Font

- [Terminess Nerd Font][term-font]

## Installation

```bash
# Clone this repo with:
git clone git@github.com:nextredo/dotfiles.git --recurse-submodules

# Use this repo's dotfiles with:
    # Ensure $STOW_DIR is unset
    # Ensure you're in the repository root
# NOTE: If you're unsure about what changes stow will make,
    # then run it with --simulate --verbose
    # if you'd like to stow anyway, use --adopt
stow .

# *Then follow the exta config steps below*
```

## Updates

```bash
# 0. `cd` into the root of this repo

# 1. Check if there are any updates
git fetch --all --recurse-submodules

# 2. Pull this repo and submodules
git pull --all --recurse-submodules

# 3. Update the submodules (first time)
git submodule update --init --recursive

# 3. Update submodules (to checkout latest commit in main / master)
git submodule update --remote

# 4. Update symlinks (see installation section)
stow .
```

## Extra config

- Helpful commands

```bash
git submodule sync
```

### Font config

```bash
# Ensure your terminal is using the custom fontconfig
# Flush the font cache
fc-cache -f -v

# Test string for the terminal
echo "Syms:♥ \nEmojis: ❤️👍😍🙊🥱🥺✨✅🎊🏄⚠️"
```

### Terminal

### C / C++ (`clangd`)

- Configured per-repo, not globally

### VSCode

- Uses vscode settings sync

### Oh My zsh

- Only theme I've found plays well with `conda`

```zsh
ZSH_THEME="ys"

# Others
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="random"
# ZSH_THEME="tonotdo"
# ZSH_THEME="cypher"
# ZSH_THEME="fino-time"
```

### Keyd

```bash
# Symlink setup (likely requires superuser privs)
ln ~/.config/keyd/default.conf /etc/keyd/default.conf -s

sudo systemctl status keyd
sudo systemctl start keyd
sudo keyd reload
```

### Bash

- To use this file put the following in your actual bashrc / fishrc / zshrc
    - (assuming this file is in ~/dotfiles/)

```bash
source ~/dotfiles/.spicy.bashrc
```

## References

>[Dreams of Autonomy - Stow][vid1]

<!-- Links -->
[vid1]: https://www.youtube.com/watch?v=y6XCebnB9gs&ab_channel=DreamsofAutonomy
[term-font]: https://www.nerdfonts.com/font-downloads
