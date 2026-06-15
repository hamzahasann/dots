if status is-interactive
    set -U fish_greeting
end

set --erase fish_greeting
function fish_greeting
end # override default function (no output)

alias g=git
alias gk="source ~/Refact/secrets.sh"
alias gg=lazygit
alias gl="git log"
alias gls="git log --stat"
alias glo="git log --oneline"
alias grc="git rebase --continue"
alias gcp="git cherry-pick"
alias gcpc="git cherry-pick --continue --no-edit"
alias gcps="git cherry-pick --skip"
alias gs="git status"
alias rr="git rebase --continue"
alias qq=yazi
alias ls="eza -l"
alias code="code-insiders"
set -Ux EDITOR hx

direnv hook fish | source

function pull_mox
    set ip $argv[1]
    rsync -az --delete hamza@$ip:$mox_path $nox_path
end

function push_nox
    set ip $argv[1]
    rsync -az --delete $nox_path hamza@$ip:$mox_path
end

set -gx FLXS_DEFAULT_PERSONAS_IMAGE $bot_store
set -gx FLXS_DEFAULT_TRTLLM_IMAGE $trtllm_image
set -gx FLXS_DEFAULT_JAX_IMAGE $jax_image

# opencode
fish_add_path /Users/hamza/.opencode/bin
# Add Google Cloud SDK to PATH
set -gx PATH /opt/homebrew/share/google-cloud-sdk/bin $PATH
set -gx PATH /Applications/Ghostty.app/Contents/MacOS $PATH

alias k=kubectl

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
set -gx PATH $HOME/.cargo/bin $PATH
