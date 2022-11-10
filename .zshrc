# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

###############################################################################
# basic ENVs                                                                  #
###############################################################################
export OS=$(uname)
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_DATA_DIRS="/home/marian/.local/share/flatpak/exports/share:/var/lib/flatpak/exports/share:/usr/local/share:/usr/share"
export XDG_DOWNLOAD_DIR="$HOME/downloads"
export XDG_DESKTOP_DIR="$HOME/desktop"

# load ENVs which vary betweeen machines
source $HOME/dotfiles/local.zsh

# keyboard config
export XKB_DEFAULT_LAYOUT="us"
export XKB_DEFAULT_VARIANT="intl"

export HISTCONTROL=ignoredups:ignorespace
export HISTSIZE=100000
export HISTFILESIZE=200000
export SAVEHIST=$HISTSIZE
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE

export TERM=xterm-256color
export COLUMNS=80

export DOTFILES=$HOME/dotfiles

export PATH="/var/lib/flatpak/exports/bin:$PATH"
export PATH="$HOME/bin:$PATH"

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

ZSH_THEME="powerlevel10k/powerlevel10k"
HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

plugins=(git asdf)

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

###############################################################################
# aliases                                                                     #
###############################################################################
alias ohmyzsh="code $DOTFILES/.zshrc"

# tools
if [[ `uname` == "Darwin" ]]; then
	alias cat="batcat"
elif [[ `uname` == "Linux" ]]; then
	alias cat="bat"
fi

# ls
alias ls="exa -F --color always --icons"
alias lsa="ls -l -a"
alias ll="ls -l"

# pacman
alias pac="pacman"
alias spac="sudo pacman"
alias pacs="pacman -sS"
alias paci="sudo pacman -yS"
alias pacr="sudo pacman -R"
alias pacu="sudo pacman -Syu"

# Node.js
export PNPM_HOME="/home/marian/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"

# Java
alias j!=jbang
export PATH="$HOME/.jbang/bin:$PATH"
