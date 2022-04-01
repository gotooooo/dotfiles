#!/bin/zsh

echo "[ -r $HOME/dotfiles/.zshrc.path ] && source $HOME/dotfiles/.zshrc.path" >> "$HOME/.zshrc"
echo "[ -r $HOME/dotfiles/.zshrc.base ] && source $HOME/dotfiles/.zshrc.base" >> "$HOME/.zshrc"
echo "[ -r $HOME/dotfiles/.zshrc.alias ] && source $HOME/dotfiles/.zshrc.alias" >> "$HOME/.zshrc"
echo "[ -r $HOME/dotfiles/.zshrc.opt ] && source $HOME/dotfiles/.zshrc.opt" >> "$HOME/.zshrc"
echo "[ -r $HOME/.zshrc.local ] && source $HOME/.zshrc.local" >> "$HOME/.zshrc"
printf '\033[32m%s\033[m\n' '.zshrc is updated'
