source ~/.bash/aliases
source ~/.bash/completions
source ~/.bash/paths
source ~/.bash/config

# use .profile mac ports stuff
if [ -f ~/.profile ]; then
  source ~/.profile
fi

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


eval "$(gulp --completion=bash)"
