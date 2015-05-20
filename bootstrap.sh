#!/usr/bin/env zsh

# A simple script for setting up OSX dev environment.

dev="$HOME/Developer"
pushd .
cd $dev

# If we on OS X, install homebrew and tweak system a bit.
if [[ `uname` == 'Darwin' ]]; then
  which -s brew
  if [[ $? != 0 ]]; then
    echo 'Installing Homebrew...'
      ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
      brew update
      brew install git-extras zsh zsh-completions htop python python3
      brew install caskroom/cask/brew-cask
      brew tap caskroom/versions
      brew cask install iterm2
      brew cask install google-chrome
      brew cask install firefox
      brew cask install java
      brew cask install node
      brew cask install virtualbox
      brew cask install vagrant
      brew cask install boot2docker
      brew cask install sublime-text3
      brew cask install telegram
      brew cask install appcleaner
      brew cask install droplr
      brew cask install transmission
      brew cask install duet
      brew cask install vlc
      brew cask install forklift
      brew cask install istat-menus
      brew cask install alfred
      brew cask install divvy
      brew cask install ioquake3
      brew cask install pycharm
      brew cask install phpstorm
  fi

  # http://github.com/sindresorhus/quick-look-plugins
  echo 'Installing Quick Look plugins...'
    brew tap phinze/homebrew-cask
    brew install caskroom/cask/brew-cask
    brew cask install suspicious-package quicklook-json qlmarkdown qlstephen qlcolorcode

  echo 'Tweaking OS X...'
    source 'etc/osx.sh'
fi

echo 'Install boot2docker'
  boot2docker init

echo 'Install python modules'
  pip install -r python-base-modules.txt

echo 'Install oh-my-zsh'
  git clone git://github.com/robbyrussell/oh-my-zsh.git "$dev/oh-my-zsh"

echo 'Install vim (https://github.com/spf13/spf13-vim)'
  sh <(curl https://j.mp/spf13-vim3 -L)

echo 'Applying sublime config...'
  st=$(pwd)/sublime/packages
  as="$HOME/Library/Application Support/Sublime Text 3/Packages"
  asprefs="$as/User/Preferences.sublime-settings"
  if [[ -d "$as" ]]; then
    rm $asprefs
    ln -s "$st/user/Preferences.sublime-settings" "$asprefs"
    wget -O "$as/seti.zip" https://github.com/ctf0/Seti_ST3/archive/master.zip
    unzip "$as/seti.zip" -d "$as"
    mv "$as/Seti_ST3-master" "$as/Seti_UI"
  else
    echo "Install Sublime Text http://www.sublimetext.com"
  fi

popd
