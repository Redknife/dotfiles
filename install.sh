echo 'Before run: `chsh -s /bin/zsh`'

dir="$HOME/Developer/redknife"
mkdir -p $dir
cd $dir
if [[ -d "$HOME/Developer/redknife/dotfiles" ]]; then
  git clone --recursive git://github.com/redknife/dotfiles.git
fi
cd dotfiles
sudo bash symlink-dotfiles.sh
