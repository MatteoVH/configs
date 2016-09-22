alias findfile='find . -name'
alias ls='ls -F'
alias lintwatch='fswatch -o -e ".*" -i "\\.coffee$" -i "\\.styl$" . | xargs -n 1 -I {} npm run lint'
o () { vim $( find . -name "$@" ); }
alias tat='tmux attach -t'
alias testwatch='fswatch -o -e ".*" -i "\\.coffee$" . | xargs -n 1 -I {} npm run unit-test'
alias tls='tmux list-sessions'
alias tnew='tmux new -s'
