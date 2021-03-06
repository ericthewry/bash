source ~/.git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\u \w$(__git_ps1) \$ '

#eval export PATH="/Users/originate/.rbenv/shims:${PATH}"
#source "/usr/local/Cellar/rbenv/0.4.0/libexec/../completions/rbenv.bash"
#rbenv rehash 2>/dev/null
#rbenv() {
#  typeset command
#  command="$1"
#  if [ "$#" -gt 0 ]; then
#    shift
#  fi
#
#  case "$command" in
#  rehash|shell)
#    eval `rbenv "sh-$command" "$@"`;;
#  *)
#    command rbenv "$command" "$@";;
#  esac
#}
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# listing helpers
alias ls='ls -AFG'
alias ll='ls -lAFG'

# Editing helpers 
alias sourceme="source $HOME/.bash_profile"
alias optimize="vim $HOME/.bash_profile"
alias mrup='cd $HOME && mr -j8 up && cd -'

# Fuck
alias fuck='eval $(thefuck $(fc -ln -1)); history -r'

# navigation helpers
alias devserve='gotomathswipe && npm run devserve'
alias gotomathswipe="cd $HOME/dev/math-swipe/mathswipe"
alias gotospv3="cd $HOME/dev/superpoints/spv3"
alias mathswipe='gotomathswipe && git status'
alias spv3='gotospv3 && git status'

# git helpers
alias branches='git branch -vv'
alias whereami='git branch -vv'
alias bombsaway='git push'

alias sauron='git branch -r'
alias status='git status'
alias prune='git fetch --prune'
alias squash='git merge --squash'
alias clip='git branch -D'
alias gimme='git pull'
alias ILLBEBACK='git stash'
alias IMBACK='git stash apply'
alias new='git checkout -b'
alias old='git checkout'
alias amend='git commit --amend'

# git auto-complete
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

add () {
  if [ -z "$1" ]
  then
    echo "-Parameter #1 is zero length.-"  # Or no parameter passed.
  else
    for arg in "$@"
    do
      git add "$arg"
    done
  fi
  status
  return 0
}

spms () {
  spm
  sps
  return 0    
}

spsm () {
  sps
  spm
}

# test helpers
sps () {
  gotospv3
  rspec spec
  return 0
}

spm () {
  gotospv3
  rspec spec_rspec_mocks
  return 0
}

# looping tests
testloop () {
  while true; do
    rspec spec -fd
    rspec spec_rspec_mocks -fd
  done
}

# Sublime text helpers
alias subtwo='subl'
alias sub2='subl'
alias subl2='subl'
alias subthree='sublime'
alias sub3='sublime'
alias subl3='sublime'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH=$PATH:./node_modules/.bin
