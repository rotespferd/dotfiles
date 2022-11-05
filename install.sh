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

# config for VSCode
if [[ `uname` == "Darwin" ]]; then
	VSC_BASE_PATH=${HOME}/Library/Application\ Support/Code
elif [[ `uname` == "Linux" ]]; then
    VSC_BASE_PATH=${XDG_CONFIG_HOME}/Code
fi

echo VSCode base path: $VSC_BASE_PATH
ln -s $DOTFILES/vscode/settings.json $VSC_BASE_PATH/User/settings.json
ln -s $DOTFILES/vscode/keybindings.json $VSC_BASE_PATH/User/keybindings.json
ln -s $DOTFILES/vscode/snippets/ $VSC_BASE_PATH/User