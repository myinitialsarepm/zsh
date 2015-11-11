export KEYTIMEOUT=1
#start powerline
powerline-daemon -q
. /Users/peter/Library/Python/2.7/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh

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
#
#tmux aliases/functions
alias tm='tmux send-keys -t '
tcd () {
	tmux setw synchronize-panes on
	tmux send-keys 'cd '$1 C-m
	tmux setw synchronize-panes off
}

#start tmux sessions and attach to general
~/.bin/tmux_start.sh
tmux a -t general

#autojump
#export FPATH="$FPATH:/opt/local/share/zsh/site-functions/"
#if [ -f /opt/local/etc/profile.d/autojump.zsh ]; then
#    . /opt/local/etc/profile.d/autojump.zsh
#fi

. /usr/sbin/warp_scripts/warp.zsh
