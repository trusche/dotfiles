
export LOCAL_IP=`ifconfig -a|grep broadcast|cut -d ' ' -f 2`

# Make sure to use ruby from rbenv instead of system
export PATH=~/.rbenv/bin:./bin:$PATH
eval "$(rbenv init -)"


# Use openssl from rbenv
#export LDFLAGS="-L/usr/local/opt/openssl/lib"
#export CPPFLAGS="-I/usr/local/opt/openssl/include"
export PATH="/usr/local/opt/openssl/bin:$PATH"
# export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"

# libpq
export PATH="/usr/local/opt/libpq/bin:$PATH"
# export LDFLAGS="-L/usr/local/opt/libpq/lib"
# export CPPFLAGS="-I/usr/local/opt/libpq/include"
# export PKG_CONFIG_PATH="/usr/local/opt/libpq/lib/pkgconfig"

# Keg-only elastic search
export PATH="/usr/local/opt/elasticsearch@2.4/bin:$PATH"


stty -ixon # enable ctrl-s forward i-search
export HISTCONTROL=ignoreboth:erasedupsa # no dups in command history

# [ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_162.jdk/Contents/Home
# export PATH=$PATH:$JAVA_HOME/bin

#export PATH=$PATH:$ANDROID_HOME/tools/bin

# export ANDROID_SDK_ROOT="/usr/local/share/android-sdk"
# export ANDROID_HOME=$ANDROID_SDK_ROOT
# export PATH=$PATH:$ANDROID_SDK_ROOT/build-tools
# export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
# export PATH=$PATH:$ANDROID_SDK_ROOT/tools
export BUNDLER_EDITOR=code

# Ansible
# export ANSIBLE_VAULT_PASSWORD_FILE=.vault_pass
# export PATH="/usr/local/opt/elasticsearch@2.4/bin:$PATH"

# Git prompt
if [ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR="/usr/local/opt/bash-git-prompt/share"
  source "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
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
