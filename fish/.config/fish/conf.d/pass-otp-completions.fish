# Completions for the pass-otp extension.  This is kept in conf.d so it
# augments the distribution's pass completions instead of replacing them.

function __fish_pass_otp_entries
    set -l store_dir "$HOME/.password-store"
    if set -q PASSWORD_STORE_DIR
        set store_dir "$PASSWORD_STORE_DIR"
    end

    test -d "$store_dir"; or return
    command find "$store_dir" -type f -name '*.gpg' -printf '%P\n' 2>/dev/null | string replace -r '\.gpg$' ''
end

function __fish_pass_otp_needs_entry
    set -l words (commandline -opc)
    test (count $words) -ge 2; and test "$words[2]" = otp; or return 1

    # The other pass-otp subcommands have different arguments.
    contains -- insert $words; and return 1
    contains -- append $words; and return 1
    contains -- uri $words; and return 1
    contains -- validate $words; and return 1
    return 0
end

complete -c pass -f -n '__fish_pass_needs_command' -a otp -d 'Generate a one-time password'
complete -c pass -n '__fish_pass_uses_command otp' -s c -l clip -d 'Copy the OTP to the clipboard'
complete -c pass -n '__fish_pass_otp_needs_entry' -a '(__fish_pass_otp_entries)'
