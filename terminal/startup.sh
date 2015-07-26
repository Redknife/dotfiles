#$(boot2docker shellinit 2>/dev/null)
source ~/Developer/rimraf/k/k.plugin.zsh

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
pyenv virtualenvwrapper_lazy
