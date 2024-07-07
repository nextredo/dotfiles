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

### Other

- [Terminess Nerd Font][term-font]

## Installation

```bash
# Ensure $STOW_DIR is unset
stow .
```

## Extra config

### Terminal

[SO post link][reverse-i-search-fix]

```bash
# To fix ctrl+s not working to scroll in ctrl+r reverse-i-search:
stty -ixon
```

### C / C++ (`clangd`)

- Configured per-repo, not globally

### VSCode

- Synced through Microsoft account

### Oh My zsh

- Only one I've found to work with `conda`

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

- `~/dotfiles`
  - Replicate layout of `~` in here

<!-- Links -->
[vid1]: https://www.youtube.com/watch?v=y6XCebnB9gs&ab_channel=DreamsofAutonomy
[term-font]: https://www.nerdfonts.com/font-downloads
[reverse-i-search-fix]: https://stackoverflow.com/questions/12373586/how-to-reverse-i-search-back-and-forth
