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
stow .

# *Then follow the exta config steps below*
```

## Updates

```bash
# 0. `cd` into the root of this repo
# 1. Pull this repo and submodules
git pull --all --recurse-submodules

# 2. Update submodules (to checkout latest commit in main / master)
git submodule update --remote

# 3. Update symlinks
stow .
```

## Extra config

### Font config

```bash
# Ensure your terminal is using the custom fontconfig
# Flush the font cache
fc-cache -f -v

# Test string for the terminal
echo "Syms:♥ \nEmojis: ❤️👍😍🙊🥱🥺✨✅🎊🏄⚠️"
```

### Terminal

[SO post link][reverse-i-search-fix]

```bash
# To fix ctrl+s not working to scroll in ctrl+r reverse-i-search:
stty -ixon
```

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

## References

>[Dreams of Autonomy - Stow][vid1]

<!-- Links -->
[vid1]: https://www.youtube.com/watch?v=y6XCebnB9gs&ab_channel=DreamsofAutonomy
[term-font]: https://www.nerdfonts.com/font-downloads
[reverse-i-search-fix]: https://stackoverflow.com/questions/12373586/how-to-reverse-i-search-back-and-forth
