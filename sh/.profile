# vim: filetype=sh

export XDG_DATA_HOME="$HOME/.local/share/"
export XDG_BIN_HOME="$HOME/.local/bin/"
export XDG_CONFIG_HOME="$HOME/.config/"

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

# --------------------------------------------

if [ -x /opt/homebrew/bin/brew ]; then
	eval "$(/opt/homebrew/bin/brew shellenv)"
elif [ -x /usr/local/bin/brew ]; then
	eval "$(/usr/local/bin/brew shellenv)"
fi

export PATH="$HOME/cdpr8/_cdp/_cdprogs:$PATH"

export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
export CMAKE_PREFIX_PATH="/opt/homebrew/opt/llvm"

export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.local/go/bin:$PATH"

export PATH="$HOME/.nimble/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
function nvml() { [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"; }

export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
