# vim: filetype=sh

# /etc/zshenv
# ~/.zshenv
# /etc/zprofile
# ~/.zprofile
# /etc/zshrc
# ~/.zshrc
# /etc/zlogin
# ~/.zlogin
# /etc/zlogout
# ~/.zlogout

# I'm not a sourcerer but I like sourcing
source ~/.aliasrc
source ~/.funcrc
source ~/.zsh_prompt

# GPG Launch
gpgconf --launch gpg-agent
# gpg-agent --daemon

# Ctrl+D was closing terminal
set -o ignoreeof

# Where should I put you?
bindkey -s ^f "tmux-sessionizer\n"
bindkey -s ^a "tmux-switch-session\n"
bindkey -s ^x "tmux-cht\n"

# Useful for editing multi-line commands
bindkey -v
function vi-yank-xclip {
	zle vi-yank
	echo "$CUTBUFFER" | pbcopy -i
}
zle -N vi-yank-xclip
bindkey -M vicmd 'y' vi-yank-xclip

autoload -Uz edit-command-line
zle -N edit-command-line
bindkey '^X^E' edit-command-line

# Option + Backspace
bindkey "\e\177" backward-kill-word

# Ain't history great?
SAVEHIST=12345
HISTSIZE=12345
HISTFILE=~/.zsh_history

setopt inc_append_history
setopt hist_ignore_all_dups

bindkey "^R" history-incremental-pattern-search-backward
bindkey "^S" history-incremental-pattern-search-forward

# https://docs.brew.sh/Shell-Completion#configuring-completions-in-zsh
if type brew &>/dev/null
then
	FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
	autoload -Uz compinit
	compinit
fi
export PATH="/usr/local/opt/libxml2/bin:$PATH"

# node (nvm)
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/x/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/x/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/x/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/x/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# pnpm
export PNPM_HOME="/Users/x/Library/pnpm"
case ":$PATH:" in
	*":$PNPM_HOME:"*) ;;
	*) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# z
eval "$(zoxide init zsh)"
