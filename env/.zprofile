export XDG_CONFIG_HOME=$HOME/.config

PERSONAL=$XDG_CONFIG_HOME/personal
DEV_ENV=$HOME/dev

addToPath() {
    if [[ "$PATH" != *"$1"* ]]; then
        export PATH=$PATH:$1
    fi
}

addToPathFront() {
    if [[ ! -z "$2" ]] || [[ "$PATH" != *"$1"* ]]; then
        export PATH=$1:$PATH
    fi
}

addToPath $HOME/.local/bin
addToPath $HOME/.local/scripts
addToPath /usr/local/go/bin

alias vi=nvim
alias nv="NVIM_APPNAME=nvim-kick nvim"
# export GDK_DPI_SCALE=0.85
