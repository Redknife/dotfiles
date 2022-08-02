export HOMEBREW_NO_ANALYTICS=1

# Homebrew
export PATH="/usr/local/sbin:$PATH:$(yarn global bin)"

export CLICOLOR=1
colorflag="-G"
export LSCOLORS='BxBxhxDxfxhxhxhxhxcxcx'

# Enable persistent REPL history for `node`.
export NODE_REPL_HISTORY=~/.node_history;
# Allow 32³ entries; the default is 1000.
export NODE_REPL_HISTORY_SIZE='32768';
# Use sloppy mode by default, matching web browsers.
export NODE_REPL_MODE='sloppy';

# SeKey (Touch ID for SSH authentication)
export PATH=$PATH:/Applications/SeKey.app/Contents/MacOS
export SSH_AUTH_SOCK=$HOME/.sekey/ssh-agent.ssh
