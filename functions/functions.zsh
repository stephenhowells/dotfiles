#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#
#
# mkdir, cd into it

mkcd() {
    mkdir -p "$*"
    cd "$*"
}

#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#
#
# Kills all processes running on the specified port (e.g. 'killport 8080')

killport() {
  lsof -i tcp:$1 | awk '(NR!=1) && ($1!="Google") && ($1!="firefox") {print $2}' | xargs kill
}

#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#
#
# FZF

_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf "$@" --preview 'tree -C {} | head -200' ;;
    *)            fzf "$@" ;;
  esac
}

k() {
  local dir
  dir=$(find ** -type d 2> /dev/null | fzf --preview 'tree -C {} | head -n 100') && cd "$dir" || echo "No directory selected"
}

#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#
#
# Basic Calculator

calc() {
  bc -l <<< "$@"
}