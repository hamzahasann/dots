source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
function fish_greeting
    # smth smth
end

set EDITOR hx
fish_add_path ~/.local/bin

alias g=git
alias gg=lazygit
alias gl="git log"
alias gls="git log --stat"
alias glo="git log --oneline"
alias grc="git rebase --continue"
alias gcp="git cherry-pick"
alias gcpc="git cherry-pick --continue --no-edit"
alias gcps="git cherry-pick --skip"
alias gs="git status"

zoxide init fish | source

alias ls="eza -l"
alias cd=z
alias qq=yazi

# Insert a directory selected with fzf at the current prompt.
function __fzf_select_directory
    set -l selected_dir (
        command fzf \
            --walker=dir,follow,hidden \
            --walker-skip=.git \
            --scheme=path \
            --height=40% \
            --reverse \
            --no-multi \
            --print0 | string split0
    )

    if test -n "$selected_dir"
        commandline --insert -- (string escape -- "$selected_dir")
    end

    commandline -f repaint
end

bind \ct __fzf_select_directory
