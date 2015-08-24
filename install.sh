echo 'Before run: `chsh -s /bin/zsh`'

dir="$HOME/Developer/rs"
mkdir -p $dir
cd $dir
if [[ -d "$HOME/Developer/rs/dotfiles" ]]; then
  git clone --recursive https://github.com/Redknife/dotfiles.git
fi
cd dotfiles
bash symlink-dotfiles.sh
