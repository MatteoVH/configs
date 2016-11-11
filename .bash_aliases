alias ff='findfile'
alias findfile='find . -name'
alias g='git'
alias l='ls'
alias la='ls -ACF'
alias ll='ls -lAF'
alias ls='ls -CF'
man() {
	env \
		LESS_TERMCAP_mb=$(printf "\e[1;31m") \
		LESS_TERMCAP_md=$(printf "\e[1;31m") \
		LESS_TERMCAP_me=$(printf "\e[0m") \
		LESS_TERMCAP_se=$(printf "\e[0m") \
		LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
		LESS_TERMCAP_ue=$(printf "\e[0m") \
		LESS_TERMCAP_us=$(printf "\e[1;32m") \
			man "$@"
}
o () { find . -name "$1" | head -n 1 | xargs -o vim; }
alias tat='tmux attach -t'
alias tkill='tmux kill-session -t'
alias tls='tmux list-sessions'
alias tnew='tmux new -s'
