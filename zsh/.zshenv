# vim: filetype=zsh

export GPG_TTY=$(tty)
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket) # GPG + SSH

export BROWSER="qutebrowser"
export TERMINAL="alacritty"
export TERM="alacritty"
export COLORTERM="truecolor"
export EDITOR="vim"
export VISUAL="vim"
export PAGER="less"
export LESSCHARSET="utf-8"
export LANG="en_GB.UTF-8"
export LC_ALL="en_GB.UTF-8"
export TZ="Europe/London"

export NO_COLOR=1
export CLIPBOARD_EDITOR="nvim"

export PASSWORD_STORE_ENABLE_EXTENSIONS="true"
