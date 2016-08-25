#!/usr/bin/env sh

dev="$HOME/Developer/rs"
pushd .
cd $dev

# If we on OS X, install homebrew and tweak system a bit.
if [[ `uname` == 'Darwin' ]]; then
  which -s brew
  if [[ $? != 0 ]]; then
    echo 'Installing Homebrew...'
      ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
      brew update
      brew install git zsh zsh-completions wget node ssh-copy-id ruby
      brew tap caskroom/cask
      brew cask install iterm2
      brew cask install google-chrome
      brew cask install firefox
      brew cask install virtualbox
      brew cask install vagrant
      brew cask install telegram
      brew cask install appcleaner
      brew cask install transmission
      brew cask install duet
      brew cask install vlc
      brew cask install forklift
      brew cask install alfred
      brew cask install divvy
      brew cask install ioquake3
      brew cask install evernote
      brew cask install coconutbattery
      brew cask install dashlane
      brew cask install kitematic
      brew cask install clipmenu
  fi

  # http://github.com/sindresorhus/quick-look-plugins
  echo 'Installing Quick Look plugins...'
    brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package

  echo 'Install Gulp, Bower'
    npm install gulp-cli -g
    npm install bower -g
fi

echo 'Install oh-my-zsh'
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo 'Install k'
  git clone https://github.com/supercrabtree/k $dev/dotfiles/zsh/plugins/k

# echo 'Install vim (https://github.com/spf13/spf13-vim)'
#   sh <(curl https://j.mp/spf13-vim3 -L)

popd
