# vim: filetype=sh

export XDG_CONFIG_HOME="$HOME/.config"

export LANG="en_GB.UTF-8"
export LC_ALL="en_GB.UTF-8"
export TZ="Europe/London"
export LESSCHARSET="utf-8"

export TERM="xterm"

export EDITOR="vim"
export VISUAL="vim"
export PAGER="less"

export BROWSER="qutebrowser"
export TERMINAL="Ghostty"

export GPG_TTY=$(tty)

export PASSWORD_STORE_ENABLE_EXTENSIONS="true"

# ---

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/pipx/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="$HOME/.local/go/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"

# HomeBrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# MacPorts
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# CDPR8
# export PATH=/Users/x/cdpr8/_cdp/_cdprogs:$PATH

# PIX
export PIPX_BIN_DIR=/Users/x/.local/pipx/bin/
