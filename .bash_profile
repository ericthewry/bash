source ~/.git-prompt.sh
PS1='\u \w$(__git_ps1) $ '
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

alias sourceme="source $HOME/.bash_profile"
alias hello='echo "Hello World!"'

alias fuck='eval $(thefuck $(fc -ln -1)); history -r'
# You can use whatever you want as an alias, like for Mondays:
alias FUCK='fuck'

# navigation helpers
alias devserve='gotomathswipe && npm run devserve'
alias gotomathswipe="cd $HOME/dev/math-swipe/mathswipe"
alias gotospv3="cd $HOME/dev/superpoints/spv3"
alias mathswipe='gotomathswipe && git status'
alias spv3='gotospv3 && git status'

# test helpers
alias spec='gotospv3 && rspec spec'
alias mocks='gotospv3 && rspec spec_rspec_mocks'

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


# to open this file
alias fuckaround="vim $HOME/.bash_profile"

# Sublime text helpers
alias subtwo='subl'
alias sub2='subl'
alias subl2='subl'
alias subthree='sublime'
alias sub3='sublime'
alias subl3='sublime'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH=$PATH:./node_modules/.bin
