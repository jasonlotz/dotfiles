export BASH_SILENCE_DEPRECATION_WARNING=1

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

# tmux
alias tm="tmux attach || tmux new"

# Scripts
PATH="$PATH:/Users/jason/Dropbox/Scripts/"

# Obsidian
export ovault="/Users/jason/Library/Mobile Documents/iCloud~md~obsidian/Documents/obsidian-vault"

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
