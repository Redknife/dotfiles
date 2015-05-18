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
      brew install git-extras zsh zsh-completions htop node python python3
  fi

  # http://github.com/sindresorhus/quick-look-plugins
  echo 'Installing Quick Look plugins...'
    brew tap phinze/homebrew-cask
    brew install caskroom/cask/brew-cask
    brew cask install suspicious-package quicklook-json qlmarkdown qlstephen qlcolorcode

  echo 'Tweaking OS X...'
    source 'etc/osx.sh'
fi

echo 'Install oh-my-zsh'
  git clone git://github.com/robbyrussell/oh-my-zsh.git "$dev/oh-my-zsh"

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
