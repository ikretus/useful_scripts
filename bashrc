alias ldd='otool -L'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias topu='top -u ${USER}'

alias git-fetch-pull='git fetch -p && git pull'
alias ssh-board='ssh -p 872 -L 6006:localhost:6006 ${A100}'
alias ssh-jupyter='ssh -p 872 -L 8888:localhost:8888 ${A100}'
alias jrun='jupyter notebook --no-browser --port 8888'

# export WORKON_HOME=/mnt/${USER}/.virtualenvs
# export PIPENV_CACHE_DIR=/mnt/${USER}/.pipenvcache

git-hash () {
    md5sum $(git status -s | awk '{print $2}')
}

git-branch-age () {
    for branch in $(git branch -r | grep -v HEAD); do echo -e $(git show --format="%ci %cr" $branch | head -n 1) "| $branch"; done | sort -r
}

git-rev-list () {
    git rev-list --objects --all | git cat-file --batch-check='%(objecttype) %(objectname) %(objectsize) %(rest)' \
    | sed -n 's/^blob //p' | sort --numeric-sort --key=2 | cut -c 1-12,41- | less
}

ssh-gpu  () {
    if [ $# -eq 0 ]; then
	ssh -p 872 ${A100}
    elif [ $# -eq 1 ]; then
	scp -P 872 $1 ${A100}:~
    else
	scp -P 872 ${A100}:$1 $2
    fi
}

if type brew &>/dev/null
then
  HOMEBREW_PREFIX="$(brew --prefix)"
  if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]
  then
    source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
  else
    for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*
    do
      [[ -r "${COMPLETION}" ]] && source "${COMPLETION}"
    done
  fi
fi
