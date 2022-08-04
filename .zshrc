####################################
# ---------- basic ENVs ---------- #
####################################
export LANG=en_US.UTF-8
export DOTFILES=$HOME/dotfiles

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='nvim'
fi

#################################
# ---------- OhMyZSH ---------- #
#################################
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh


#################################
# ---------- aliases ---------- #
#################################
alias ohmyzsh="code $DOTFILES/.zshrc"

# pacman
alias pac="pacman"
alias spac="sudo pacman"