alias a='atom'

alias dev='cd ~/Developer/rs'
alias go-work='cd ~/Developer/rs/work'
alias go-testing='cd ~/Developer/rs/testing'
alias go-gh='cd ~/Developer/rs/github'
alias go-bb='cd ~/Developer/rs/bitbucket'
alias go-rs='cd ~/Developer/rs'
alias go-dotfiles='cd ~/Developer/rs/dotfiles'
alias go-ctf='cd ~/Developer/rs/ructf'

# Simple http server in cur dir
alias serve='python -m SimpleHTTPServer'

# Lists the ten most used commands.
alias history-stat="history 0 | awk '{print \$2}' | sort | uniq -c | sort -n -r | head"

# Git
alias g='git'

alias gst='git status'
alias ga='git add'
alias gaa='git add --all'
alias gapa='git add --patch'
alias gau='git add --update'

alias gb='git branch'
alias gba='git branch -a'
alias gbd='git branch -d'

alias gc='git commit -v'
alias gc!='git commit -v --amend'
alias gcn!='git commit -v --no-edit --amend'
alias gca='git commit -v -a'
alias gca!='git commit -v -a --amend'
alias gcan!='git commit -v -a --no-edit --amend'
alias gcans!='git commit -v -a -s --no-edit --amend'
alias gcam='git commit -a -m'
alias gcsm='git commit -s -m'
alias gcb='git checkout -b'
alias gcf='git config --list'
alias gcl='git clone --recursive'
alias gclean='git clean -fd'
alias gpristine='git reset --hard && git clean -dfx'
alias gcm='git checkout master'
alias gcd='git checkout dev'
alias gcmsg='git commit -m'
alias gco='git checkout'
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'
alias gcpa='git cherry-pick --abort'
alias gcpc='git cherry-pick --continue'
alias gcs='git commit -S'
alias gcnm='git commit -n -m'
alias gpod='git push origin dev'

alias gd='git diff'
alias gdca='git diff --cached'
alias gdct='git describe --tags `git rev-list --tags --max-count=1`'
alias gdt='git diff-tree --no-commit-id --name-only -r'
alias gdw='git diff --word-diff'
