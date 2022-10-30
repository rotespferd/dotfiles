#!/bin/zsh
ln -s $HOME/dotfiles/.zshrc $HOME/.zshrc
ln -s $HOME/dotfiles/.p10k.zsh $HOME/.p10k.zsh
source $HOME/.zshrc

if [[ `uname` == "Darwin" ]]; then
	
elif [[ `uname` == "Linux" ]]; then
	ln -s $DOTFILES/sway $XDG_CONFIG_HOME/sway
    ln -s $DOTFILES/swaylock $XDG_CONFIG_HOME/swaylock
    ln -s $DOTFILES/dunst $XDG_CONFIG_HOME/dunst
    ln -s $DOTFILES/alacritty $XDG_CONFIG_HOME/alacritty
    ln -s $DOTFILES/waybar $XDG_CONFIG_HOME/waybar

    ln -s $DOTFILES/systemd $XDG_CONFIG_HOME/systemd/user
fi