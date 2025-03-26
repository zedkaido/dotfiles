# vim: filetype=zsh

export PATH="$HOME/.local/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="$HOME/.local/go/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"

# HomeBrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# MacPorts
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
