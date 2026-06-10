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

# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# ! *Then follow the extra config steps below* !
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
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

# 4. Update submodules (to checkout latest commit in main / master)
git submodule update --remote

# 5. Update symlinks (see installation section)
stow .
```

## Extra config
- Helpful commands

```bash
git submodule sync
```

### Font config
- Emoji fonts may not work in Alacritty on Ubuntu 22.04
- See [this link](https://github.com/alacritty/alacritty/issues/8050) for more info
- To solve
  - Either use a newer version of `libfreetype` (via having a newer Ubuntu version)
  - Or, use alacritty from commit `a77f77c `

```bash
# Ensure your terminal is using the custom fontconfig
# Flush the font cache
fc-cache -f -v

# Test string for the terminal
echo -e "Syms:♥ \nEmojis: ❤️👍😍🙊🥱🥺✨✅🎊🏄⚠️"
```

### Terminal
### C / C++ (`clangd`)
- Configured per-repo, not globally

### VSCode
- Uses vscode settings sync

### Oh My zsh
- Only theme I've found plays well with `conda`

```zsh
# GOOD
# ZSH_THEME="ys"

# ZSH_THEME="gallois"
# - No hostename, username
# - Just path, git branch
# - Has time last cmd took to run
# - Has return code of last item

# Others
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="random"
# ZSH_THEME="tonotdo"
# ZSH_THEME="cypher"
# ZSH_THEME="fino-time"

# Other others
# ZSH_THEME="skaro"
# ZSH_THEME="trapd00r"

# Not great
# ZSH_THEME="kardan"
# ZSH_THEME="geoffgarside"
# ZSH_THEME="simple"
```

### Keyd
```bash
# Symlink setup (requires superuser privileges)
sudo ln -s ~/.config/keyd/default.conf /etc/keyd/default.conf

sudo systemctl status keyd
sudo systemctl enable keyd --now
sudo keyd reload

# Chown the file as root so regular userspace programs can't mess with your keyboard
sudo chown root:root ~/.config/keyd/default.conf
```

### Powertop
- The Framework 12th Gen Intel has terrible battery life (i5-1240p)
- It's advisable to do whatever you can to save on power consumption
- Introducing: `sudo powertop --auto-tune`
- It's developed by intel, so I trust em somewhat

#### Important notes
- Make sure not to turn off *"Autosuspend for USB ..."* settings
- This causes mice and alike to become sluggish to wake up from sleep

#### Systemd integration
```bash
# Setup the systemd service unit file
sudo cat << EOF > /etc/systemd/system/powertop.service
# Thanks to the Arch Wiki <3
# https://wiki.archlinux.org/title/Powertop
###########################################

[Unit]
Description=PowerTOP auto tune

[Service]
Type=oneshot
RemainAfterExit=yes
ExecStart=/usr/sbin/powertop --auto-tune

[Install]
WantedBy=multi-user.target sleep.target
EOF

# Restart the daemon so it uses the new unit
sudo systemctl daemon-reload

# Enable and start the service
sudo systemctl enable powertop.service --now
```

### Bash
- To use this file put the following in your actual bashrc / fishrc / zshrc
    - (assuming this file is in ~/dotfiles/)

```bash
source ~/dotfiles/.spicy.bashrc
```

## References
> [Dreams of Autonomy - Stow][vid1]

<!-- Links -->
[vid1]: https://www.youtube.com/watch?v=y6XCebnB9gs&ab_channel=DreamsofAutonomy
[term-font]: https://www.nerdfonts.com/font-downloads
