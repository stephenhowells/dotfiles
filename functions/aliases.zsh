# File Paths
alias dev='cd ~/Dev'
# Misc
alias rezsh='exec zsh'
alias c='clear'
alias sshkey="cat ~/.ssh/id_rsa.pub | pbcopy"
alias v='vim'
alias rake='noglob rake'
alias updatezsh='upgrade_oh_my_zsh'
alias s="say -v 'vicki'"
alias ssh='TERM=xterm-256color ssh'
# Vagrant
alias vu='vagrant up'
alias vh='vagrant halt'
alias vd='vagrant destroy'
alias vss='vagrant ssh'
alias vin='vagrant init'
alias vs='vagrant suspend'
alias vr='vagrant resume'
alias vbl='vagrant box list'
# Get your current public IP
alias ip="curl icanhazip.com"
# copy the working directory path
alias cpwd='pwd|tr -d "\n"|pbcopy'
# top
alias cpu='top -o cpu'
alias mem='top -o rsize' # memory
# Copy output of last command to clipboard
alias cl="fc -e -|pbcopy"
alias lf="ls -aF"
# colorls
alias lc="colorls -lA --sd"
alias lsdir="colorls -d"
# Dev
alias dsf="git diff --color | diff-so-fancy"
alias serve-me="python -m SimpleHTTPServer 8000"
alias dokku='bash $HOME/.dokku/contrib/dokku_client.sh'
# Phoenix
alias phx='mix phx.new'
# Harp
alias hs='NODE_ENV=development harp server --port 8000'
# Testing
alias selenium='java -jar ~/bin/selenium-server-standalone-2.*.jar'
# blog
alias blog='cd ~/Dev/stephenhowells.net'
alias jb='bundle exec jekyll b -q'
# Web tools
alias header='curl -I'
alias ns='dig +short NS'
# Tmux
alias t='tmux'
alias tnew='tmux new -s'
alias ta='tmux at'
alias tatt='tmux at -t'
alias tl='tmux ls'
alias tkill='tmux kill-session -t'
alias tmuxkill='tmux kill-server'
# Git
alias gpom='git push origin master'
alias gpod='git push origin dev'
alias reset-head='git push origin +HEAD'
alias init='git init && git add . && git commit -m "Initial Commit"'
# Rails
alias br='bin/rails'
alias bundle='nocorrect bundle'
alias ber='bundle exec rspec'
alias bers='bundle exec rails s'
# Vue
alias nuxt='vue init nuxt/starter'
# Laravel
alias art='php artisan'
alias unit='vendor/bin/phpunit'
alias pcf='php-cs-fixer'
alias dusk='php artisan dusk'
alias tinker='php artisan tinker'
# Node
alias nr='npm run'
# ESlint
alias eslint-gatsby='wget https://raw.githubusercontent.com/stephenhowells/eslintrc/master/gatsby/.eslintrc && wget https://raw.githubusercontent.com/stephenhowells/eslintrc/master/gatsby/.eslintignore && npx install-peerdeps --dev eslint-config-wesbos'
