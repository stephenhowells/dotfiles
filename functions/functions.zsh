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
# Easily extracts archives (extract somefile.zip)

function extract {
    echo Extracting $1 ...
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xjf $1  ;;
            *.tar.gz)    tar xzf $1  ;;
            *.bz2)       bunzip2 $1  ;;
            *.rar)       rar x $1    ;;
            *.gz)        gunzip $1   ;;
            *.tar)       tar xf $1   ;;
            *.tbz2)      tar xjf $1  ;;
            *.tgz)       tar xzf $1  ;;
            *.zip)       unzip $1   ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1  ;;
            *)        echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}


