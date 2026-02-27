if status is-login
    source ~/.config/shell/profile
end

if status is-interactive
    source ~/.config/shell/aliasrc
    source ~/.config/fish/themes/tokyonight.fish

    fish_vi_key_bindings

    set -g fish_greeting
    set -g fish_color_valid_path
    set -g fish_complete_hidden true
    set -g fish_prompt_pwd_dir_length 100

    set -g hydro_symbol_prompt 
    set -g hydro_symbol_git_ahead 󰁝
    set -g hydro_symbol_git_behind 󰁅
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
