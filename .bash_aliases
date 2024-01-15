# utils
alias clr='clear'
alias c='pwd | xclip -selection clipboard && echo "<< ;) >>"'
alias t='ts %H:%M:%S'

# git
alias g='git'
alias ga='git diff --stat && git add'
alias gb='git branch'
alias gd='git diff'
alias gc='git commit -m'
alias gca='git commit --amend'
alias gcob='git checkout -b'
alias gco='git checkout'
alias gl='git log --oneline --graph'
alias gr='git revert'
alias gs='git status && git diff --stat'
alias gu='git reset --mixed HEAD'
alias gp='git push'
alias gclean='git clean -fdx'
function gbclean() {
    git fetch -p && for branch in $(git branch -vv | grep ': gone]' | awk '{print $1}'); do git branch -D $branch; done
}
function gpfirst() {
    git push -u origin $( git rev-parse --abbrev-ref HEAD )
}

# git colors
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\u@\h \[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "

# navigation
alias ..='cd ..'
alias home='cd ~'

# display filestructure
alias ll='ls -la'
alias tree='tree -Csuh'

# start programs
alias vscode='code &'
alias code='code &'
alias chrome='google-chrome &'
alias idea='idea &'
alias gedit='gedit &'

# verbose
alias mv='mv -v'
alias cp='cp -v'
alias ln='ln -v'
alias cpv='rsync -ah --info=progress2'

# parsers
alias prettyjson='python -m json.tool'
alias prettyxml='xmllint --format -'

# ssh
alias ssh='ssh -o StrictHostKeyChecking=no'

# tmux
alias tnw='tmux new-window'
alias tkw='tmux kill-window'

# modify bash aliases!
alias mba='vim ~/.bash_aliases'
alias aba='source ~/.bash_aliases'
