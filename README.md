## Installation

```
$ git clone git@github.com:Tottitov/dotfiles.git ~/.local/share
$ cd ~/.local/share/dotfiles
$ stow -vt ~ .
```

### Setting up seat & session management
- Use dinit as init system
- use turnstile for session management
- use seatd for seat management
- use dbus as bus system/session

That means D-Bus handling in Artix is completely out of box by default. You simply install it, and Dinit will activate it, both for system bus and for user logins, and there is absolutely nothing to do from the user’s side.

Additionally, you should never run anything with dbus-run-session or similar. Doing so results in a nested session bus being launched which will result in things running in it not being seen by things running in the global session bus. It’s also completely unnecessary.
