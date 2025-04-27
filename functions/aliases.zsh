alias gentech='ssh gentech'
# File Paths
alias dev='cd ~/Dev'
alias rf='rm -rf'
alias eg='cd /Users/stephen/Library/CloudStorage/Egnyte-MSHFileServer'
alias ls='lsd -lAhL --color=always --git'
alias l='lsd -lAhL --color=always --git'
#FZF
alias files="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"
alias search="fzf --preview '[[ -d {} ]] && tree -C {} | head -200 || lsd -lAhL --color=always --git {}' --preview-window=right:60% --height=40% --layout=reverse --border"
# Misc
alias vim='nvim'
alias rezsh='exec zsh'
alias zshconfig='nvim ~/.zshrc'
alias c='clear'
alias sshkey="cat ~/.ssh/id_rsa.pub | pbcopy"
alias v='vim'
alias ssh='TERM=xterm-256color ssh'
alias dockspace="defaults write com.apple.dock persistent-apps -array-add '{\"tile-type\"=\"spacer-tile\";}'; killall Dock"
alias tx='tmux new -s Stephen'
alias updatekitty='curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin'
# Get your current public IP
alias ip="curl 4.icanhazip.com"
# copy the working directory path
alias cpwd='pwd|tr -d "\n"|pbcopy'
# top
alias cpu='top -o cpu'
alias mem='top -o rsize' # memory
# Web tools
alias header='curl -I'
alias ns='dig +short NS'
# Git
alias gpom='git push origin main'
alias gpod='git push origin dev'
alias reset-head='git push origin +HEAD'
alias init='git init && git add . && git commit -m "Initial Commit"'
# Laravel
alias a='php artisan'
alias art='php artisan'
alias unit='php artisan test --parallel --processes=4'
alias pcf='php-cs-fixer'
alias dusk='php artisan dusk'
alias tinker='php artisan tinker'
alias refresh='php artisan scout:flush "App\User" && php artisan migrate:fresh --seed && php artisan factory:users 20'
alias reseed='php artisan migrate:fresh --seed'
alias pest='./vendor/bin/pest'
alias pestc='./vendor/bin/pest --parallel --coverage'
alias p='herd coverage ./vendor/bin/pest --coverage --coverage-clover storage/coverage/coverage.xml'
alias pd='pnpm dev'
alias pb='pnpm build'
alias com='composer'
alias vapor='vendor/bin/vapor'
alias rl='php artisan route:list'
alias rlv='php artisan route:list -v'
alias rle='php artisan route:list --except-vendor'
alias rlev='php artisan route:list --except-vendor -v'
alias pint='./vendor/bin/pint'
alias share='herd share --region=us --domain=local-dev.connectwithmsh.com'
alias s='php artisan solo'
alias e='npm run test:e2e'
# Node
alias nv='node --version > .node-version'
alias x='pnpm dlx'
alias nrd='npm run dev'
# Vue
alias vd='nohup ./node_modules/.bin/vue-devtools &>/dev/null &'
