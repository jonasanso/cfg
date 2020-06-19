ZSH_DISABLE_COMPFIX="true"
# Path to your oh-my-zsh installation.
  export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="kolo"

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
plugins=(git command-not-found httpie scala sbt zsh-syntax-highlighting zsh-autosuggestions)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/Users/jonas/Library/Application\ Support/Coursier/bin"
export INIT_PATH="$PATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export EDITOR=nano

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


ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=5'


export IBUS_ENABLE_SYNC_MODE=1
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
alias scalarepl=amm
alias ls='funtion f(){CLICOLOR_FORCE=1 ls -lhAFG $* | tail -n +2 | less -X -F --quit-at-eof};f'
alias remove-old-branches="git branch --merged | grep -v '\*' | grep -v 'master' | grep -v 'develop' | grep -v 'staging' | xargs -n 1 git branch -d && git remote prune origin"
alias setup-graal-jvm="export JAVA_HOME=$(/usr/libexec/java_home -v 11); export PATH=$(/usr/libexec/java_home -v 11)/bin:$INIT_PATH"
alias setup-jvm-8="export JAVA_HOME=$(/usr/libexec/java_home -v 1.8); export PATH=$(/usr/libexec/java_home -v 1.8)/bin:$INIT_PATH"
alias setup-jvm-11="export JAVA_HOME=/Users/jonas/Library/Caches/Coursier/jvm/openjdk@1.11.0-2/Contents/Home; export PATH=/Users/jonas/Library/Caches/Coursier/jvm/openjdk@1.11.0-2/Contents/Home/bin:$INIT_PATH"
alias setup-jvm-12="export JAVA_HOME=/Users/jonas/Library/Caches/Coursier/jvm/openjdk@1.12.0-2/Contents/Home; export PATH=/Users/jonas/Library/Caches/Coursier/jvm/openjdk@1.12.0-2/Contents/Home/bin:$INIT_PATH;export PATH_TO_FX=/Users/jonas/software/javafx-sdk-11.0.2/lib"

alias run='x(){ local app="$1"; shift 1; find . -perm +111 -type f -name "$app" -exec {} $@ \;;  unset -f x; }; x'

# setup jvm
setup-jvm-8

