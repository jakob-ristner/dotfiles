#CLASSPATH=/usr/share/java/postgresql-jdbc/postgresql-9.2-1002.jdbc4.jar
#export CLASSPATH

# comment to test symlink
# Enable colors and change prompt:
autoload -U colors && colors	# Load colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%2~%{$fg[red]%}]%{$reset_color%}$%b "
#PS1="%B%{$fg[magenta]%}%3~%{$fg[blue]%} »%{$reset_color%}%b "

#PS1="%B%{$fg[blue]%}%2~ %{$fg[yellow]%}›%{$reset_color%}%b "
#PS1="%B%{$fg[blue]%}%2~ %{$fg[yellow]%}%{$reset_color%}%b "
setopt autocd		# Automatically cd into typed directory.
stty stop undef		# Disable ctrl-s to freeze terminal.
    
export LC_CTYPE="sv_SE.UTF-8"
export EDITOR='vim'

alias reboot="loginctl reboot"
alias poweroff="loginctl poweroff"
alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias pc="sudo pacman"
alias mpv="mpv --gpu-context=wayland"
alias adv="cd ~/git/adventofcode"
alias dbjava="java -cp ~/downloads/postgresql-42.2.19.jar:"

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

alias vim="echo -ne '[1 q' && vim"

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
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "[5 q"
}
zle -N zle-line-init
echo -ne '[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '[5 q' ;} # Use beam shape cursor for each new prompt.


# Load syntax highlighting; should be last.
source /usr/share/zsh/plugins/fast-syntax-highlighting.plugin.zsh 2>/dev/null

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then exec startx; fi


    
