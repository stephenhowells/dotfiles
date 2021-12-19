# File Paths
alias dev='cd ~/Dev'
alias rf='rm -rf'
# Misc
alias rezsh='exec zsh'
alias c='clear'
alias sshkey="cat ~/.ssh/id_rsa.pub | pbcopy"
alias v='vim'
alias rake='noglob rake'
alias updatezsh='omz update'
alias s="say -v 'vicki'"
alias ssh='TERM=xterm-256color ssh'
alias ydl='youtube-dl'
alias dockspace="defaults write com.apple.dock persistent-apps -array-add '{\"tile-type\"=\"spacer-tile\";}'; killall Dock"
# Get your current public IP
alias ip="curl icanhazip.com"
# copy the working directory path
alias cpwd='pwd|tr -d "\n"|pbcopy'
# top
alias cpu='top -o cpu'
alias mem='top -o rsize' # memory
# Web tools
alias header='curl -I'
alias ns='dig +short NS'
# Git
alias gpom='git push origin master'
alias gpod='git push origin dev'
alias reset-head='git push origin +HEAD'
alias init='git init && git add . && git commit -m "Initial Commit"'
# Laravel
alias art='php artisan'
alias unit='php artisan test --parallel --processes=4'
alias pcf='php-cs-fixer'
alias dusk='php artisan dusk'
alias tinker='php artisan tinker'
alias refresh='php artisan scout:flush "App\User" && php artisan migrate:fresh --seed && php artisan factory:users 20'
alias reseed='php artisan migrate:fresh --seed'
alias pest='./vendor/bin/pest'
alias sail='./vendor/bin/sail'
alias yh='yarn hot'
alias yd='yarn dev'
alias yb='yarn build'
alias com='composer'
alias vapor='vendor/bin/vapor'
