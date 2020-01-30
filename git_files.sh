#!/bin/zsh


GIT_FILES=( .gitconfig .gitconfig.github .gitignore_global )

for file in ${GIT_FILES[@]}
do
    ln -s $HOME/dotfiles/$file $HOME/$file
done

printf '\033[32m%s\033[m\n' 'git files are set'
