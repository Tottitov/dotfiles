autoload -U promptinit
promptinit
PURE_PROMPT_SYMBOL=''
PURE_PROMPT_VICMD_SYMBOL=''
prompt pure

autoload -Uz compinit && compinit -C
zstyle ':completion:*' menu select
zmodload zsh/complist
_comp_options+=(globdots)

bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

chpwd() {
	printf '\e]7;file://%s%s\a' "$HOST" "$PWD"
}

zle-keymap-select() {
	case $KEYMAP in
	vicmd) echo -ne '\e[1 q' ;;
	viins | main) echo -ne '\e[5 q' ;;
	esac
}
zle -N zle-keymap-select

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

eval "$(zoxide init --cmd cd zsh)"
eval "$(fnm env --use-on-cd --shell zsh)"
eval "$(fzf --zsh --reverse)"

source "$XDG_CONFIG_HOME/shell/aliasrc"
source "/usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh"
source "/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
