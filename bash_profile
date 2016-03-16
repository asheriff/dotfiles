if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

ulimit -n 2000

export PATH=$HOME/.binctl:$PATH
[ -s "/Users/a1260506/.nvm/nvm.sh" ] && . "/Users/a1260506/.nvm/nvm.sh" # This loads nvm
