function fish_mode_prompt
    switch $fish_bind_mode
        case default
            set_color --bold blue
            echo 'NOR '
        case insert
            set_color --bold green
            echo 'INS '
        case replace_one
            set_color --bold red
            echo 'REP '
        case replace
            set_color --bold red
            echo 'REP '
        case visual
            set_color --bold magenta
            echo 'VIS '
    end
end
