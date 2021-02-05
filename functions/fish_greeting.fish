function fish_greeting
    if type -q neofetch
        neofetch
    else if type -q fortune
        fortune
    end
end
