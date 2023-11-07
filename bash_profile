
export LOCAL_IP=`ifconfig -a|grep broadcast|cut -d ' ' -f 2`
export PATH=/opt/homebrew/bin:~/.rbenv/shims:./bin:$PATH

# Make sure to use ruby from rbenv instead of system
eval "$(rbenv init -)"


# Use openssl from rbenv
export PATH="/usr/local/opt/openssl/bin:$PATH"

export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

stty -ixon # enable ctrl-s forward i-search
export HISTCONTROL=ignoreboth:erasedupsa # no dups in command history

export BUNDLER_EDITOR=code

# Bash completion
[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

# Git prompt
if [ -f "/$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR="/$(brew --prefix)/opt/bash-git-prompt/share"
  source "/$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

# bash completion
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# Docker
# eval "$(docker-machine env default)"

. ~/.aliasrc

export EDITOR=vim
export PATH="/usr/local/opt/qt@5.5/bin:$PATH"
# export LDFLAGS="-L/usr/local/opt/qt@5.5/lib"
# export CPPFLAGS="-I/usr/local/opt/qt@5.5/include"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

export BASH_SILENCE_DEPRECATION_WARNING=1
