autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit -C
_comp_options+=(globdots)

precmd() { precmd() { echo } }

HISTFILE="${XDG_CACHE_HOME}/zsh/history"
HISTSIZE=5000
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

bindkey -v '^?' backward-delete-char
source "${XDG_CONFIG_HOME}/shell/aliasrc"
source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(starship init zsh)"
eval "$(zoxide init --cmd cd zsh)"
eval "$(fzf --zsh)"
