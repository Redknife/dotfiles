# ==================================================================
# = Aliases =
# ==================================================================

alias a='atom'

# Simple clear command.
alias cl='clear'

# Disable sertificate check for wget.
alias wget='wget --no-check-certificate'

# Some OS X-only stuff.
if [[ "$OSTYPE" == darwin* ]]; then
  # Short-cuts for copy-paste.
  alias c='pbcopy'
  alias p='pbpaste'

  # Case-insensitive pgrep that outputs full path.
  alias pgrep='pgrep -fli'

  # Lock current session and proceed to the login screen.
  alias lock='/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend'

  # Process grep should output full paths to binaries.
  alias pgrep='pgrep -fli'
else
  # Process grep should output full paths to binaries.
  alias pgrep='pgrep -fl'
fi

# Package managers.
alias ni='npm install'
alias nis='npm install --save'
alias nibi='npm install && bower install'
alias nibir='rm -rf {bower_components,node_modules} && npm install && bower install'
alias ns='npm search'

# Simple http server in cur dir
alias serve='python -m SimpleHTTPServer'

# Checks whether connection is up.
alias net="ping ya.ru | grep -E --only-match --color=never '[0-9\.]+ ms'"

# Lists the ten most used commands.
alias history-stat="history 0 | awk '{print \$2}' | sort | uniq -c | sort -n -r | head"
