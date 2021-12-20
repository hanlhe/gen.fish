# This file was modified from
# https://github.com/begray/git-fish/blob/master/git.fish

alias g=git
alias ga='git add'
alias gaa='git add --all'
alias gb='git branch -vv'
alias gbD='git branch -D'
alias gbd='git branch -d'
alias gc='git commit -v'
alias gcb='git checkout -b'
alias gcf='git config --list'
alias gco='git checkout'
alias gcps='git cherry-pick --signoff'
alias gcpa='git cherry-pick --abort'
alias gcpc='git cherry-pick --continue'
alias gd='git diff'
alias gds='git diff --staged'
alias ggsup='git branch --set-upstream-to=origin/(_current_branch)'
alias gl='git pull'
alias glog='git log --oneline --decorate --graph'
alias gm='git merge'
alias gma='git merge --abort'
alias gp='git push -v'
alias gpd='git push --dry-run'
alias gpf='git push --force-with-lease'
alias gpsup='git push --set-upstream origin (_current_branch)'
alias grup='git remote update'
alias grv='git remote -v'
alias gst='git status'
alias ggc='git gc --aggressive --prune=now'

function gcol --description 'Git checkout and pull' --argument-names branch
    git checkout $branch
    git pull
end

function _current_branch
  echo (command git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
end
