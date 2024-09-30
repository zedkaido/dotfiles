# vim: filetype=zsh

# Append new paths to the existing PATH
export PATH="$HOME/.local/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="$HOME/.local/go/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"

eval "$(/opt/homebrew/bin/brew shellenv)"
