. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/completion

# use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && . ~/.localrc

ulimit -n 2000

export PATH=$HOME/.binctl:$PATH
[ -s "/Users/a1260506/.nvm/nvm.sh" ] && . "/Users/a1260506/.nvm/nvm.sh" # This loads nvm
