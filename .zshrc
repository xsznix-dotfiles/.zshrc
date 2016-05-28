# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Custom plugins and themes directory.
ZSH_CUSTOM="$HOME/.zsh_custom"

# The theme to load.
ZSH_THEME="xsznix"

# Plugins to load. Sources: ~/.oh-my-zsh/plugins/ ~/.zsh-custom/plugins/
plugins=(common-aliases extract git grep lol ruby rvm sublime web-search z zsh-syntax-highlighting)

# OS X-specific plugins.
if [[ `uname` == 'Darwin' ]]; then
	plugins+=(brew)
fi

# Local, untracked changes to default oh-my-zsh configuration.
[[ -e $HOME/.zshrc-local-pre ]] || touch $HOME/.zshrc-local-pre
source $HOME/.zshrc-local-pre

# Load oh-my-zsh.
source $ZSH/oh-my-zsh.sh

# Highlighting.
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=fg=magenta
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=fg=magenta
ZSH_HIGHLIGHT_STYLES[path]=fg=cyan
ZSH_HIGHLIGHT_STYLES[default]=fg=yellow

# Unalias some annoying things.
unalias rm
unalias cp
unalias mv

alias rmi='rm -i'
alias cpi='cp -i'
alias mvi='mv -i'

# Local, untracked configuration
[[ -e $HOME/.zshrc-local ]] || touch $HOME/.zshrc-local
source $HOME/.zshrc-local

# Print every directory change.
chpwd () {
	print -P "%{$fg[black]%}« $(pwd)%{$reset_color%}"
}

# Initialize screen.
clear
print -P "%{$fg[black]%}« %n@%m :: $(pwd)%{$reset_color%}"
