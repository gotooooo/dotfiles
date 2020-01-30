#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

[ -f ~/dotfiles/.zshrc.alias ] && source ~/dotfiles/.zshrc.alias
[ -f ~/dotfiles/.zshrc.base ] && source ~/dotfiles/.zshrc.base
[ -f ~/dotfiles/.zshrc.opt ] && source ~/dotfiles/.zshrc.opt
[ -f ~/dotfiles/.zshrc.path ] && source ~/dotfiles/.zshrc.path
[ -f ~/.zshrc.local ] && source ~/.zshrc.local
