#vim:filetype=bash
#bash: <https://www.gnu.org/software/bash/manual/bash.html>

PROMPT_COMMAND='echo -ne "\e]0;${PWD}\a"'
parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
PS1="\$PWD\$(parse_git_branch)\n$ "
PROMPT_COMMAND="${PROMPT_COMMAND:-:}"

HISTFILE=/dev/null

stty -ixon # Enable (history forward-search) <Ctrl-s>
set -o vi # vi mode

bind '"\C-b\C-f":"tmux-sessionizer\n"'
bind '"\C-b\C-b":"tmux-switch-session\n"'
bind '"\C-b\C-x":"tmux-cht\n"'

IGNOREEOF=2 # <C-d> (x3) to exit session

source ~/.aliasrc
source ~/.funcrc
source ~/.profile

# <https://github.com/scop/bash-completion>
if [[ -s $HOMEBREW_PREFIX/etc/profile.d/bash_completion.sh ]]; then
	. "$HOMEBREW_PREFIX/etc/profile.d/bash_completion.sh"
fi
