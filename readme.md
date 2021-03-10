## Setup symlinks in `~/.config`.

```shell
sh setup.sh
```

## GTK Themes
To change the apearance of GTK themes, use the application `lxappearance`

Try editing the following files [https://wiki.archlinux.org/index.php/GTK#Basic_theme_configuration]
`~/.config/gtk-3.0/settings.ini`

`~/.config/gtkrc-2.0/settings.ini`


## Turning off Firefox Dark Mode
Edit 
`/usr/share/applications/firefox-developer-edition.desktop`

Change the 3 Exec lines to read:
`Exec=env GTK_THEME=Adapta-Maia /usr/lib/firefox-developer-edition/firefox %u`

Copy this file.
`sudo cp desktop/firefox-developer-edition.desktop /usr/share/applications/firefox-developer-edition.desktop`

## XResources
Edit `~/.Xresources`
- [https://wiki.archlinux.org/index.php/X_resources]
- [https://wiki.archlinux.org/index.php/HiDPI]

Multiples of 96 work best

```
Xft.dpi: 110
```

Refresh the config with
`xrdb ~/.Xresources`
`xrdb -merge ~/.Xresources`

## I3 Application Bindings
To set specific application bindings, you can find the application name by running `xprop` and copy the **second** value in `WM_CLASS_STRING`.

## Custom Monitors
Install the application `arandr`.  You can customize the monitors, and save the output `~/.screenlayout`.

## Fonts
To refresh the font cache `fc-cache -v`

## Rofi
Documentation:
- https://github.com/davatorium/rofi/wiki/themes
- https://wiki.archlinux.org/index.php/Rofi

You can configure rofi themes by running `rofi-theme-selector`

## Setting Default Browser
Edit `~/.config/mimeapps.list` and set all the http values to `brave.desktop` .

Set `export BROWSER="/usr/bin/brave"` in `~/.bashrc`


## Vscode Memory Fix
- https://github.com/guard/listen/wiki/Increasing-the-amount-of-inotify-watchers

```shell
echo fs.inotify.max_user_watches=524288 | sudo tee /etc/sysctl.d/40-max-user-watches.conf && sudo sysctl --system
```

# Troubleshooting
If there are problems with the video driver on x1. You might need to remove the following package:
`sudo pacman -Rsn xf86-video-intel`