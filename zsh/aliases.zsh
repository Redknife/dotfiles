alias a='atom'

alias dev='cd ~/Developer/rs'
alias work='cd ~/Developer/rs/work'
alias testing='cd ~/Developer/rs/testing'
alias ggh='cd ~/Developer/rs/github'
alias gbb='cd ~/Developer/rs/bitbucket'

# Simple clear command.
alias cl='clear'

# NPM
alias ni='npm install'
alias nis='npm install --save'
alias nibi='npm install && bower install'
alias nibir='rm -rf {bower_components,node_modules} && npm install && bower install'
alias ns='npm search'

# Simple http server in cur dir
alias serve='python -m SimpleHTTPServer'

# Lists the ten most used commands.
alias history-stat="history 0 | awk '{print \$2}' | sort | uniq -c | sort -n -r | head"
