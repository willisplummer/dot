export PATH=/usr/local/share/npm/bin:$PATH
# source ~/.kickstarter_profile 2>/dev/null

source /usr/local/etc/bash_completion.d/git-completion.bash
source /usr/local/etc/bash_completion.d/git-prompt.sh

ulimit -n 2048

# paths
export PATH=./bin:/usr/local/bin:/usr/local/sbin:$PATH
export PATH=/usr/local/share/npm/bin:$PATH
export NODE_PATH=/usr/local/lib/node_modules:$NODE_PATH
export PATH="$HOME/.rbenv/bin:$PATH"

eval "$(rbenv init -)"

export PATH="/usr/local/share/npm/bin:$PATH"

alias be="bundle exec"

# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH
export DOCKER_TLS_VERIFY=1
export DOCKER_IP=192.168.99.100
export DOCKER_HOST=tcp://$DOCKER_IP:2376
export DOCKER_CERT_PATH=/Users/willisplummer/.docker/machine/machines/ksrdev
export DOCKER_MACHINE_NAME=ksrdev

# Git branch in prompt.

parse_git_branch() {

   git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}

export PS1="\W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] 🎷  "

# Some useful aliases
alias c='clear'
alias ..='cd ..'
alias rake='bundle exec rake'
alias cap='bin/cap'
alias ebp='vim ~/.bash_profile'

# Git aliases
alias gpom='git pull origin master'
alias delete_all_branches="git branch | grep -v "master" | xargs git branch -D"
alias g='git'
alias ga='git add'
alias gb='git branch'
alias gc='git commit -v'
alias gcm='git commit -m'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcom='git checkout master'
alias gd='git diff'
alias gds='git diff --staged'
alias gs='git stash'
alias gsp='git stash pop'
alias gpull='git pull'
alias gpush='git push origin head'
alias gstat='git status'

# Some helpers for ksr local development
alias pow_reset="touch tmp/restart.txt"
alias dev_logs="tail -f log/development.log"

export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
source ~/.bashrc
