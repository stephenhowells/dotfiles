echo "Linking the dotfiles…"
rm ~/.zshrc > /dev/null 2>&1
for f in $(ls -A ~/.dotfiles/dots); do ln -s ~/.dotfiles/dots/$f ~/; done
for f in $(ls -A ~/.dotfiles/functions); do ln -s ~/.dotfiles/functions/$f ~/.oh-my-zsh/custom; done
ln -s ~/.dotfiles/.gitignore ~/
ln -s ~/.dotfiles/bin ~/
