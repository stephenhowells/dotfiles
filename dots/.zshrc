#  ███████╗██╗  ██╗
#  ██╔════╝██║  ██║
#  ███████╗███████║
#  ╚════██║██╔══██║
#  ███████║██║  ██║
#  ╚══════╝╚═╝  ╚═╝
#
# Personal zsh configuration of Stephen Howells @stephenhowells
#
#--------------------------------------------------------------------------
# Bootstrap Environment
#--------------------------------------------------------------------------

if [[ $TERMINAL_EMULATOR != "JetBrains-JediTerm" && $TERM_PROGRAM != "vscode" && $TERM_PROGRAM != "docker_desktop" && $TERM_PROGRAM != "ghostty" && $TERM_PROGRAM != "tmux" ]]; then
  TERM=xterm-kitty

  _not_inside_tmux() { [[ -z "$TMUX" ]] }

  ensure_tmux_is_running() {
    if _not_inside_tmux; then
      $HOME/bin/tat
    fi
  }

  ensure_tmux_is_running
else
  TERM=xterm-256color
fi

function is-macos() {
  [[ $OSTYPE == darwin* ]]
}

#--------------------------------------------------------------------------
# Keybindings
#--------------------------------------------------------------------------

bindkey -e
setopt auto_cd

#--------------------------------------------------------------------------
# History
#--------------------------------------------------------------------------

HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

#--------------------------------------------------------------------------
# Styling
#--------------------------------------------------------------------------

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'
zstyle '*:matches' group 'yes'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' group-order files directories
zstyle ':completion:*' verbose yes
zstyle ':omz:plugins:alias-finder' autoload yes
zstyle ':omz:plugins:alias-finder' cheaper yes

#--------------------------------------------------------------------------
# FZF Preview Navigation & Sizing
#--------------------------------------------------------------------------

export FZF_DEFAULT_OPTS="
  --bind 'alt-up:preview-up,alt-down:preview-down,alt-left:preview-page-up,alt-right:preview-page-down'
  --preview-window 'right:60%:wrap'
  --height 80%
"

#--------------------------------------------------------------------------
# Preferred Editor
#--------------------------------------------------------------------------

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

#--------------------------------------------------------------------------
# Dev Tools
#--------------------------------------------------------------------------

# Herd injected PHP binary.
export PATH="/Users/stephen/Library/Application Support/Herd/bin/":$PATH

# Herd injected PHP 8.3 configuration.
export HERD_PHP_83_INI_SCAN_DIR="/Users/stephen/Library/Application Support/Herd/config/php/83/"

# Herd injected PHP 8.4 configuration.
export HERD_PHP_84_INI_SCAN_DIR="/Users/stephen/Library/Application Support/Herd/config/php/84/"

. /opt/homebrew/opt/asdf/libexec/asdf.sh

# The next line updates PATH for egcli command.
if [ -f '/Users/stephen/Library/Group Containers/FELUD555VC.group.com.egnyte.DesktopApp/CLI/egcli.inc' ]; then . '/Users/stephen/Library/Group Containers/FELUD555VC.group.com.egnyte.DesktopApp/CLI/egcli.inc'; fi

#--------------------------------------------------------------------------
# Antidote
#--------------------------------------------------------------------------

zsh_plugins=${ZDOTDIR:-~}/.zsh_plugins

[[ -f ${zsh_plugins}.txt ]] || touch ${zsh_plugins}.txt

fpath=(
  $(brew --prefix)/opt/antidote/share/antidote/functions
  ${ASDF_DATA_DIR:-$HOME/.asdf}/completions
  $HOME/.docker/completions
  $fpath
)

autoload -Uz antidote

if [[ ! ${zsh_plugins}.zsh -nt ${zsh_plugins}.txt ]]; then
  antidote bundle <${zsh_plugins}.txt >|${zsh_plugins}.zsh
fi

source ${zsh_plugins}.zsh

autoload -Uz compinit && compinit

#--------------------------------------------------------------------------
# Shell Integration
#--------------------------------------------------------------------------

eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"

#--------------------------------------------------------------------------
# Adjust Path
#--------------------------------------------------------------------------

typeset -U path fpath

#--------------------------------------------------------------------------
# Source Custom Files
#--------------------------------------------------------------------------

for file in ${ZDOTDIR:-~}/.dotfiles/functions/*.zsh; do
  [ -f "$file" ] && source "$file"
done

#--------------------------------------------------------------------------
# Load Oh My Posh
#--------------------------------------------------------------------------

if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/steve.json)"
fi
