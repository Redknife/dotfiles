# export GOPATH=$HOME/Developer/redknife/go
# export PATH=$PATH:$GOPATH:/usr/local/opt/go/libexec/bin:/Users/redknife/Developer/redknife/go/bin
source $HOME/Developer/rimraf/k/k.plugin.zsh

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
pyenv virtualenvwrapper_lazy
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
