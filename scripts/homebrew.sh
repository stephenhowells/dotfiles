echo "Installing Homebrew…"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap Goles/battery
brew update

FORMULAS=(
    rbenv
    redis
    postgresql
    heroku
    wget
    git
    tree
    imagemagick
    elixir
    go
    python
    vim
    archey
    battery
    fzf
    mosh
    sqlite
    tmux
    yarn
    youtube-dl
    reattach-to-user-namespace
    z
)

brew install ${FORMULAS[@]}
