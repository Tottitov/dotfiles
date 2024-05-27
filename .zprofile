#!/bin/zsh

# Adds scripts to $PATH
export PATH="$PATH:$(find ~/.local/bin -type d -printf %p:)"

# Program variables
export EDITOR="nvim"
export TERMINAL="footclient"
export BROWSER="firefox"

# XDG directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_RUNTIME_DIR="/run/user/$(id -u)"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$XDG_CACHE_HOME/zsh/history"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/password-store"
export NOTMUCH_CONFIG="$XDG_CONFIG_HOME/notmuch/notmuchrc"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc-2.0"
export MBSYNCRC="$XDG_CONFIG_HOME/mbsync/config"
export WINEPREFIX="$XDG_DATA_HOME/wineprefixes/default"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export W3M_DIR="$XDG_STATE_HOME/w3m"

# Other settings
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
export XKB_DEFAULT_OPTIONS="ctrl:nocaps"
export GTK_THEME="Arc-Gruvbox"
export XDG_SESSION_TYPE="wayland"
export QT_QPA_PLATFORM="wayland"
export SDL_VIDEODRIVER="wayland"
export MOZ_ENABLE_WAYLAND=1

# Create zsh cache dir if not there
[ ! -d "${XDG_CACHE_HOME}/zsh" ] && mkdir -p "${XDG_CACHE_HOME}/zsh"

# Start river window manager in tty
[ "$(tty)" = "/dev/tty1" ] && ! pidof -q river &&
exec dbus-launch --exit-with-session river >/dev/null 2>&1
