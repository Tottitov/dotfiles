## Installation

```
$ git clone git@github.com:Tottitov/dotfiles.git ~/.local/share
$ cd ~/.local/share/dotfiles
$ stow .
```

### Using iwd as the Wi-Fi backend

/etc/NetworkManager/conf.d/wifi_backend.conf
```
[device]
wifi.backend=iwd
```

### Setting up cronjobs

```
*/5 * * * * . $HOME/.zprofile; export DBUS_SESSION_BUS_ADDRESS=$(grep -z ^DBUS_SESSION_BUS_ADDRESS= /proc/$(pgrep -x river)/environ | cut -d= -f2-); $HOME/.local/bin/mailsync
*/30 * * * * . $HOME/.zprofile; $HOME/.local/bin/statusbar/weather
```
