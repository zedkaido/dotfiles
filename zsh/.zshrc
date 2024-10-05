# vim: filetype=zsh

source ~/.zsh_prompt
source ~/.aliasrc
source ~/.funcrc

# -------
# History
# -------
SAVEHIST=12345
HISTSIZE=12345
HISTFILE=~/.zsh_history
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS

# -----------
# Keybindings
# -----------
bindkey -v # vi mode
function vi-yank-xclip {
	zle vi-yank
	echo "$CUTBUFFER" | pbcopy -i
}
zle -N vi-yank-xclip
bindkey -M vicmd 'y' vi-yank-xclip

autoload -Uz edit-command-line
zle -N edit-command-line
bindkey '^X^E' edit-command-line

bindkey "\e\177" backward-kill-word # Option + Backspace
bindkey "^R" history-incremental-pattern-search-backward
bindkey "^S" history-incremental-pattern-search-forward

bindkey -s ^b^f "tmux-sessionizer\n"
bindkey -s ^b^b "tmux-switch-session\n"
bindkey -s ^b^x "tmux-cht\n"

set -o ignoreeof # Ctrl + D shouldn't close the terminal

# ----------
# COMPLETION
# ----------
# https://docs.brew.sh/Shell-Completion#configuring-completions-in-zsh
if type brew &>/dev/null ; then
	FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
	autoload -Uz compinit bashcompinit
	compinit
	bashcompinit
fi

# ---------
# SERVICES
# --------
# GPG Launch
gpgconf --launch gpg-agent

# z | NAVIGATE with ease
eval "$(zoxide init zsh)"
