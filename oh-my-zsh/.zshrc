###############################################################################
# PATH                                                                        #
###############################################################################

export PATH=$HOME/bin:/usr/local/bin:$PATH

# VS Code
  export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Homebrew
  export PATH="$PATH:/usr/local/sbin" 

# Android
  export ANDROID_HOME=$HOME/Library/Android/sdk
  export PATH=$PATH:$ANDROID_HOME/emulator
  export PATH=$PATH:$ANDROID_HOME/tools
  export PATH=$PATH:$ANDROID_HOME/tools/bin
  export PATH=$PATH:$ANDROID_HOME/platform-tools
  export JAVA_HOME="/Applications/Android Studio.app/Contents/jre/jdk/Contents/Home"

# asdf-vm
  export PATH=$PATH:/usr/local/bin/asdf

###############################################################################
# ZSH                                                                         #
###############################################################################
export ZSH="/Users/luan/.oh-my-zsh"

###############################################################################
# Theme                                                                       #
###############################################################################

ZSH_THEME="spaceship"

SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  host          # Hostname section
  dir           # Current directory section
  git           # Git section (git_branch + git_status)
  vi_mode       # Vi-mode indicator
  char          # Prompt character
)
SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "

###############################################################################
# Plugins                                                                     #
###############################################################################

plugins=(
  git
)

###############################################################################
# Others                                                                      #
###############################################################################

DISABLE_UPDATE_PROMPT="true"

export UPDATE_ZSH_DAYS=10

export ZSH_DISABLE_COMPFIX="true" 

export EDITOR='code'

source $ZSH/oh-my-zsh.sh

# asdf-vm
  . /usr/local/opt/asdf/asdf.sh
  . ~/.asdf/plugins/java/set-java-home.sh

###############################################################################
# Aliases                                                                     #
###############################################################################

# ZSH config
  alias zshconfig="$EDITOR ~/.zshrc"

# Git
  alias g='git status'
  alias gc='git commit'
  alias gl='git log --graph --pretty=format:'\''%Cred%h%Creset -%C(yellow)%d%Creset %Cblue%an%Creset - %s %Cgreen(%cr)%Creset'\'' --abbrev-commit --date=relative'
  alias gls='git log --graph --pretty=format:'\''%s'\'' --abbrev-commit --date=relative --author="`git config --get user.name`"'
  alias gd='git --no-pager diff'
  alias gm='git merge --no-edit'
  alias ga='git add'
  alias gr='git rm'
  alias gp='git pull --rebase --prune'
  alias gb='git branch'
  alias gba='git branch -a'
  alias gbd='git branch -d'
  alias gbD='git branch -D'
  alias push='git push'
  alias rn='npx react-native'

# macOS
  alias flushdns='sudo killall -HUP mDNSResponder' # https://support.apple.com/en-au/HT202516
  alias simulator="open -a Simulator.app"

# Homebrew
  alias brewski='brew update && brew upgrade && brew cleanup; brew doctor'


