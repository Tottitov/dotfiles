## Installation

```
$ git clone git@github.com:Tottitov/dotfiles.git ~/.local/share
$ cd ~/.local/share/dotfiles
$ stow -vt ~ .
```

### Using iwd as the Wi-Fi backend

/etc/NetworkManager/conf.d/wifi_backend.conf
```
[device]
wifi.backend=iwd
```

### Setting up seat & session management
- Use dinit as init system
- use turnstile for session management
- use seatd for seat management
- use acpi for power management
- use dbus as bus system/session

That means D-Bus handling in Artix is completely out of box by default. You simply install it, and Dinit will activate it, both for system bus and for user logins, and there is absolutely nothing to do from the user’s side.
