function fish_greeting
    set ttyc (tty)
    if string match -q -- "*0" $ttyc; and type -q neofetch
        neofetch
        return 0
    end
    if type -q fortune
        fortune
    end
end
