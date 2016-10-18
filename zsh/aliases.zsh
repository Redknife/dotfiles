alias a='atom'

alias dev='cd ~/Developer/rs'
alias go-work='cd ~/Developer/rs/work'
alias go-testing='cd ~/Developer/rs/testing'
alias go-gh='cd ~/Developer/rs/github'
alias go-bb='cd ~/Developer/rs/bitbucket'
alias go-rs='cd ~/Developer/rs'
alias go-dotfiles='cd ~/Developer/rs/dotfiles'

# Simple http server in cur dir
alias serve='python -m SimpleHTTPServer'

# Lists the ten most used commands.
alias history-stat="history 0 | awk '{print \$2}' | sort | uniq -c | sort -n -r | head"
