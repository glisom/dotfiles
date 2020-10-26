# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/grantisom/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="spaceship"

ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

plugins=(git autojump osx lein marked2 thefuck zshmarks sudo zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
# Aliases
alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
alias cbn="sh ~/.scripts/copy_branch_name"
alias lfw="lein figwheel"
alias atom="code"
alias f="fuck"
alias crgif="sh ~/.scripts/create_gif"
[[ -s /Users/grantisom/.autojump/etc/profile.d/autojump.sh ]] && source /Users/grantisom/.autojump/etc/profile.d/autojump.sh

autoload -U compinit && compinit -u
