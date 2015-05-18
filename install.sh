echo 'Before run: `chsh -s /bin/zsh`'

dir="$HOME/Developer/redknife"
mkdir -p $dir
cd $dir
if [[ -d "$HOME/Developer/redknife/dotfiles" ]]; then
  git clone --recursive https://github.com/Redknife/dotfiles.git
fi
cd dotfiles
sudo bash symlink-dotfiles.sh
