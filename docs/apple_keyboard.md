# Apple Keyboard Config
- I have an Apple Wireless Keyboard A1314
- It's a bit different from what I'm used to, so here's how I configure it

## Config
### Temporary
```bash
sudo sh -c 'echo "1" > /sys/module/hid_apple/parameters/swap_fn_leftctrl'
sudo sh -c 'echo "1" > /sys/module/hid_apple/parameters/swap_opt_cmd'
```

### Permanent
```bash
# in /etc/modprobe.d/hid_apple.conf
options hid_apple swap_fn_leftctrl=1 swap_opt_cmd=1

# then regenerate initramfs
```

## Shortcuts
| combo           | function          |
| --------------- | ----------------- |
| fn + f6         | numlock           |
| fn + enter      | insert            |
| fn + arrow keys | what you'd expect |

## Resources
- The [Arch Wiki][aw-apple-kb] has some good intel on it

## Other Commands
- `modinfo hid_apple`

## Extensions
- Good other configs
- I think these are only in the [patched driver][patched-driver]
- [ ] `ejectcd_as_delete`
- [ ] `rightalt_as_rightctrl`

## PrintScreen, SysRq
- Keyboard doesn't have the button for it ;(
- No native way to do it afaik
- Just need to do remappings
  - keyd
  - or Gnome
  - Probably better as keyd, since I assume you *might* be able to use it for SysRq then?

[patched-driver]: https://github.com/free5lot/hid-apple-patched
[aw-apple-kb]: https://wiki.archlinux.org/title/Apple_Keyboard
