# Enable colors and change prompt:

autoload -U colors && colors	# Load colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%2~%{$fg[red]%}]%{$reset_color%}$%b "
#PS1="%B%{$fg[magenta]%}%3~%{$fg[blue]%} »%{$reset_color%}%b "

export PATH="$HOME/.local/bin:$PATH"

#PS1="%B%{$fg[blue]%}%2~ %{$fg[yellow]%}›%{$reset_color%}%b "
#PS1="%B%{$fg[blue]%}%2~ %{$fg[yellow]%}%{$reset_color%}%b "
stty stop undef		# Disable ctrl-s to freeze terminal.

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory
    
export LC_CTYPE="sv_SE.UTF-8"
export EDITOR='nvim'

alias reboot="systemctl reboot"
alias poweroff="systemctl poweroff"
alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias plist="pactl list short sinks"
alias pset="pactl set-default-sink"
alias bt="bluetuith"
alias nv="lvim"
alias nvim="lvim"

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char


# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '[5 q'
  fi
}

f() {
    fff "$@"
    cd "$(cat "${XDG_CACHE_HOME:=${HOME}/.cache}/fff/.fff_d")"
}

zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "[5 q"
}
zle -N zle-line-init
echo -ne '[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '[5 q' ;} # Use beam shape cursor for each new prompt.

zle -N f
bindkey -s "^F" "f\n"

bindkey -s "^B" "bluetuith\n"


# Load syntax highlighting; should be last.
source /usr/share/zsh/plugins/fast-syntax-highlighting.plugin.zsh 2>/dev/null

#if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then exec startx; fi
