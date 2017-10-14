parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] 🎷  "

# Some useful aliases
alias c='clear'
alias ..='cd ..'
alias g='git'
alias ga='git add'
alias gb='git branch'
alias gc='git commit -v'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gpush='git push'
alias gs='git stash'
alias gsp='git stash pop'
alias gstat='git status'
