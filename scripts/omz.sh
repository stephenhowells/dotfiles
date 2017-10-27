echo "Oh My ZSH Customization…"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
curl https://raw.githubusercontent.com/zeit/zeit.zsh-theme/master/zeit.zsh-theme -Lo ~/.oh-my-zsh/themes/zeit.zsh-theme
