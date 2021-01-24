#!/bin/zsh

echo "zinit snippet $HOME/dotfiles/.zshrc.path" >> "$HOME/.zshrc"
echo "zinit snippet $HOME/dotfiles/.zshrc.base" >> "$HOME/.zshrc"
echo "zinit snippet $HOME/dotfiles/.zshrc.alias" >> "$HOME/.zshrc"
echo "zinit snippet $HOME/dotfiles/.zshrc.opt" >> "$HOME/.zshrc"
echo "zinit snippet $HOME/.zshrc.local" >> "$HOME/.zshrc"
printf '\033[32m%s\033[m\n' '.zshrc is updated'
