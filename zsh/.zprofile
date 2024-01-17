export BASH_SILENCE_DEPRECATION_WARNING=1

#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_202.jdk/Contents/Home
export JAVA_HOME=`/usr/libexec/java_home`

# Git
alias gc=git commit -m @$ 

# Python
alias python=python3
alias pip=pip3

# Manchester
export PATH="/Users/jason/Workspaces/manchester/bin/:$PATH"
export CATALINA_HOME=/Users/jason/Apps/apache-tomcat-8.5.72
export tc=/Users/jason/Apps/apache-tomcat-8.5.72

# Scripts
PATH="$PATH:/Users/jason/Dropbox/Scripts/"

export NVM_DIR="$HOME/.nvm"
# Load Node Version Manager
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
# Node Version Manager autocomplete
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"
 
# NOTE - Add this to /etc/profile
# Enable nvm if available
#if [ -f ~/.nvm/nvm.sh ]; then
#  source ~/.nvm/nvm.sh
#fi

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
