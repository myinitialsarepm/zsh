export KEYTIMEOUT=1
. /Users/peter/Library/Python/2.7/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh

bindkey -v

#set history size
export HISTSIZE=2000
#set history file
export HISTFILE="$HOME/.zsh_history"
#enable history saving on exit
export SAVEHIST=$HISTSIZE

#don't add duplicates to history
setopt hist_ignore_all_dups
#don't add commands preceded with a space to history
setopt hist_ignore_space

# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' menu select=1
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/Users/peter/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
