function bu --description 'brew update everything'
    brew update
    brew upgrade
    brew cleanup
    brew doctor
    brew cu -ayv
end
