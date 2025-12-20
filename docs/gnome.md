# GNOME
## Cool shortcuts
| combo                  | function      | notes                |
| ---------------------- | ------------- | -------------------- |
| ctrl + alt + shift + R | record screen | can also just prtscn |

## Software
- [Extension manager][ext-man]
- [GNOME's own extensions][https://gitlab.gnome.org/GNOME/gnome-shell-extensions]

### Extensions
- [System Monitor][https://extensions.gnome.org/extension/6807/system-monitor/]
- [Random Wallpaper][https://extensions.gnome.org/extension/1040/random-wallpaper/]
- [Tiling Shell][https://extensions.gnome.org/extension/7065/tiling-shell/]
- [Unblank][https://extensions.gnome.org/extension/1414/unblank/]

## [Random Wallpaper Extension][rand-wall-ext]
### Issue
#### Fix
See [this GitHub issue](https://github.com/ifl0w/RandomWallpaperGnome3/issues/223)

```bash
# 1. Install the extension
# 2. Check your GNOME shell version
gnome-shell --version

# 3. Mark it as compatible with your version
#   a. Add to the `shell-version` JSON array
vim ~/.local/share/gnome-shell/extensions/randomwallpaper@iflow.space/metadata.json
```

<!-- Links -->
[ext-man]: https://github.com/mjakeman/extension-manager
[rand-wall-ext]: https://extensions.gnome.org/extension/1040/random-wallpaper/
