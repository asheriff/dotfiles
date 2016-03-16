source ~/.bash/aliases
source ~/.bash/completions
source ~/.bash/paths
source ~/.bash/config

# fancy git prompt
if [ -f ~/.bash-git-prompt/gitprompt.sh ]; then
	source ~/.bash-git-prompt/gitprompt.sh

	GIT_PROMPT_ONLY_IN_REPO=1
fi

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

[ -s "~/.nvm/nvm.sh" ] && . "~/nvm.sh" # This loads nvm

ulimit -n 2000

export PATH=$HOME/.binctl:$PATH
