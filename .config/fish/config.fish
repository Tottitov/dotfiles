if status is-interactive
    source ~/.config/shell/aliasrc

    fish_vi_key_bindings

    set -g fish_greeting
    set -g fish_prompt_pwd_dir_length 1

    set -g hydro_symbol_prompt 
    set -g hydro_multiline true

    set -g hydro_color_pwd blue
    set -g hydro_color_git green
    set -g hydro_color_prompt cyan
    set -g hydro_color_error red
    set -g hydro_color_duration magenta

    zoxide init --cmd cd fish | source
    fnm env --use-on-cd --shell fish | source
    fzf --fish | source
end
