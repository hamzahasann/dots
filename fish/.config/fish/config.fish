if status is-interactive
    # Commands to run in interactive sessions can go here
    set -U fish_greeting
end

alias g=git
alias gs="git status"
alias gf="git fetch"
alias gc="git commit"
alias hx='helix'
export EDITOR='helix'
export ANDROID_SDK_ROOT="/home/hamza/Android/Sdk"
export PATH="$PATH":"$HOME/.pub-cache/bin"
alias gk="source ~/Refact/secrets.sh"
