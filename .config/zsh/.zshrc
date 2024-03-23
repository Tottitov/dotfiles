function branch() {
	local branch=$(git symbolic-ref --short HEAD 2>/dev/null)
	[ -n "$branch" ] && echo " %{%F{yellow}%}($branch)%{%f%}"
}

function precmd {
    print -Pn "\e]0;%n@%m %~\a"
}

function preexec {
    print -Pn "\e]0;%n@%m %~\a"
}

autoload -U colors && colors
setopt PROMPT_SUBST
PS1="%B%{$fg[white]%}[%{$fg[magenta]%}%n%{$fg[magenta]%}@%{$fg[magenta]%}%M \
%{$fg[red]%}%~\$(branch)%{$fg[white]%}]%{$reset_color%}$%b "

autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

HISTFILE="${XDG_CACHE_HOME}/zsh/history"
HISTSIZE=10000
SAVEHIST=10000

bindkey -v '^?' backward-delete-char
source "${XDG_CONFIG_HOME}/shell/aliasrc"
source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(zoxide init --cmd cd zsh)"
