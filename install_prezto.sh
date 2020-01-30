#!/bin/zsh

## install Prezto
## see https://github.com/sorin-ionescu/prezto

printf '\033[32m%s\033[m\n' 'Installing Prezto...'

## clear
unlink ~/.zshrc
rm -rf ${ZDOTDIR:-$HOME}/.zprezto

## install
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

printf '\033[32m%s\033[m\n' 'Prezto installation is finished'

## update .zpreztorc

printf '\033[32m%s\033[m\n' '.zpreztorc is updated'
\cp -f $HOME/dotfiles/.zpreztorc $HOME/.zpreztorc
