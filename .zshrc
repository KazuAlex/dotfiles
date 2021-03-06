# Path to your oh-my-zsh installation.
  export ZSH=$HOME/.oh-my-zsh
  export TERM="xterm-256color"
  export ZSH_2000_DISABLE_RVM='true'
  export ANDROID_HOME=$HOME/android-sdk-linux
  export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

EDITOR=vim

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git sudo docker nyan cp)

# User configuration

  export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/home/acousin/.composer/vendor/bin:/usr/java/jdk1.7.0_75/bin:/home/acousin/Android/Sdk/:/home/acousin/Android/Sdk/tools:/home/acousin/Android/Sdk/platform-tools:/home/acousin/Android/Sdk/"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

source ~/.zsh_aliases

if [ -f ~/.zsh_aliases_$(uname -n) ]; then
  source ~/.zsh_aliases_$(uname -n)
fi
# source ~/powerlevel9k/powerlevel9k.zsh-theme

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#

# only for citae
# function crysaccess() {
#   cd /home/theodo/crysalide/projects/$1
# }
# compdef '_files -W /home/theodo/crysalide/projects/' crysaccess

# export NVM_DIR="~/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i

function gcrand() {
  while true; do
    wtc=$(echo $(curl -s http://whatthecommit.com/index.txt))" - http://whatthecommit.com";
    echo "$wtc";
    select yn in "Yes" "No" "Cancel"; do
      case $yn in
        Yes ) git commit -m "$wtc"; return;;
        No ) break;;
        Cancel ) return;;
      esac
    done;
  done;
}



# history ## not working :(
export HIST_STAMPS="yyyy-mm-dd"
export HISTFILE=~/.zsh_history
export HISTSIZE=999999999
export SAVEHIST=$HISTSIZE



## NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
