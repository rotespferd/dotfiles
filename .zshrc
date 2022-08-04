###############################################################################
# basic ENVs                                                                  #
###############################################################################
export OS=$(uname)
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_DOWNLOAD_DIR="$HOME/downloads"
export XDG_DESKTOP_DIR="$HOME/desktop"

export HISTCONTROL=ignoredups:ignorespace
export HISTSIZE=100000
export HISTFILESIZE=200000
export SAVEHIST=$HISTSIZE
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE

export TERM=xterm-256color
export COLUMNS=80

export DOTFILES=$HOME/dotfiles

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='nvim'
fi

###############################################################################
# OhMyZSH                                                                     #
###############################################################################
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh


###############################################################################
# aliases                                                                     #
###############################################################################
alias ohmyzsh="code $DOTFILES/.zshrc"

# pacman
alias pac="pacman"
alias spac="sudo pacman"