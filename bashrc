source ~/.bash/aliases
source ~/.bash/completions
source ~/.bash/paths
source ~/.bash/config

# use .bashrc_local for settings specific to one system
if [ -f ~/.bashrc_local ]; then
  source ~/.bashrc_local
fi

# Ruby rbenv stuff
if [ -e ~/.rbenv ]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

if type grunt > /dev/null 2>&1; then
  eval "$(grunt --completion=bash)"
fi

[ -s "$HOME/.nvm/nvm.sh" ] && . "$HOME/.nvm/nvm.sh"
