# Share the systemd-managed OpenSSH agent across all Fish sessions.
set -gx SSH_AUTH_SOCK "$XDG_RUNTIME_DIR/ssh-agent.socket"
