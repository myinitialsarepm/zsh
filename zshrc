export KEYTIMEOUT=1
#start powerline
if [ $(uname -s) = "Darwin" ]
then
	.  /opt/local/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
elif [ $(uname -s) = "Linux" ]
then
	. /home/peter/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
fi

#set vim key bindings
bindkey -v
#extra vim like keybindings
bindkey '^p' up-history
bindkey '^n' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward
bindkey '^f' history-incremental-search-forward

#set history size
export HISTSIZE=2000
#set history file
export HISTFILE=~/.zsh_history
#enable history saving on exit
export SAVEHIST=$HISTSIZE

#don't add duplicates to history
setopt hist_ignore_all_dups
#don't add commands preceded with a space to history
setopt hist_ignore_space

#enable corrections
setopt correct

# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' menu select=1
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/Users/peter/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

#aliases
alias vummath=~/.bin/vummath.sh
alias develop=~/.bin/develop

if [ $(uname -s) = "Darwin" ]
then
	alias ls="ls -G"
	alias ll="ls -alhG"
elif [ $(uname -s) = "Linux" ]
then
	alias ls="ls --color=auto"
	alias ll="ls -alh --color=auto"
fi

alias less="less -R" #less will interpret color sequences properly
export CLICOLOR_FORCE=true #ls will send color codes even when piped

#tmux aliases/functions
alias tm='tmux send-keys -t '
tcd () {
	tmux setw synchronize-panes on
	tmux send-keys 'cd '$1 C-m
	tmux setw synchronize-panes off
}

#start tmux sessions and attach to general
#~/.bin/tmux_start.sh
#tmux a -t general

#. /usr/sbin/warp_scripts/warp.zsh
