echo "Installing Vim"
mkdir ~/.vim
mkdir ~/.vim/backup ~/.vim/swap ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
