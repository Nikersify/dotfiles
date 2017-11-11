# git
alias ga "git add"
alias gap "git add -p"

function gc --wraps git --description 'git commit -m'
	git commit -m "$argv"
end

function gca --wraps git --description 'git commit --amend -m'
	git commit --amend -m "$argv"
end

alias gcan "git commit --amend --no-edit"
alias gd "git diff"
alias gdc "git diff --cached"
alias gl "git log"
alias glg "git log --color=always --format=oneline --abbrev-commit --decorate | head"
alias gp "git push"
alias gr "git reset HEAD"
alias gs "git status"

# tmux
alias ta "tmux attach -t"
alias tk "tmux kill-session -t"
alias tls "tmux ls"
alias tn "tmux new -s (sort -R .config/misc/words | head -n 1)"