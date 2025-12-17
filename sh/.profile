# vim: filetype=sh

export XDG_CONFIG_HOME="$HOME/.config"

export LANG="en_GB.UTF-8"
export LC_ALL="en_GB.UTF-8"
export TZ="Europe/London"

export TERM="xterm"
export EDITOR="vim"
export VISUAL="vim"
export PAGER="less"
export MANPAGER="less"
export LESSCHARSET="UTF-8"

export BROWSER="/usr/bin/env qutebrowser"
export TERMINAL="Alacritty"

export GPG_TTY=$(tty)
export PASSWORD_STORE_ENABLE_EXTENSIONS="true"

# ---

export PATH="$HOME/.local/bin:$PATH"

# HomeBrew
export PATH="/opt/homebrew/bin:$PATH"
eval "$(/usr/bin/env brew shellenv)"

# MacPorts
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# CDPR8
# export PATH="$HOME/cdpr8/_cdp/_cdprogs:$PATH"

# GO
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.local/go/bin:$PATH"

# LLVM
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
export CMAKE_PREFIX_PATH="/opt/homebrew/opt/llvm"

# Nimble (nim)
export PATH="$HOME/.nimble/bin:$PATH"

# PIPX
export PATH="$HOME/.local/pipx/bin:$PATH"
export PIPX_BIN_DIR="$HOME/.local/pipx/bin/"

# nvm
export NVM_DIR="$HOME/.nvm"
function nvml() { [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"; }
