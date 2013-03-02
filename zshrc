######################################################################
#                    Anoop's zshrc file v0.1 
######################################################################

# next lets set some enviromental/shell pref stuff up
# setopt NOHUP
#setopt NOTIFY
#setopt NO_FLOW_CONTROL
setopt INC_APPEND_HISTORY SHARE_HISTORY
setopt APPEND_HISTORY
# setopt AUTO_LIST		# these two should be turned off
# setopt AUTO_REMOVE_SLASH
# setopt AUTO_RESUME		# tries to resume command of same name
unsetopt BG_NICE		# do NOT nice bg commands
setopt CORRECT			# command CORRECTION
setopt EXTENDED_HISTORY		# puts timestamps in the history
# setopt HASH_CMDS		# turns on hashing
#
setopt MENUCOMPLETE
setopt ALL_EXPORT

# Set/unset  shell options
setopt   notify globdots correct pushdtohome cdablevars autolist
setopt   correctall autocd recexact longlistjobs
setopt   autoresume histignoredups pushdsilent 
setopt   autopushd pushdminus extendedglob rcquotes mailwarning
unsetopt bgnice autoparamslash

# Autoload zsh modules when they are referenced
zmodload -a zsh/stat stat
zmodload -a zsh/zpty zpty
zmodload -a zsh/zprof zprof
zmodload -ap zsh/mapfile mapfile


TZ="Asia/Calcutta"
HISTFILE=$HOME/.zhistory
HISTSIZE=10000000000000
SAVEHIST=10000000000000
HOSTNAME="`hostname`"
PAGER='less'
EDITOR='vim'
    autoload colors zsh/terminfo
    if [[ "$terminfo[colors]" -ge 8 ]]; then
   colors
    fi
    for color in RED GREEN YELLOW BLUE MAGENTA CYAN WHITE; do
   eval PR_$color='%{$terminfo[bold]$fg[${(L)color}]%}'
   eval PR_LIGHT_$color='%{$fg[${(L)color}]%}'
   (( count = $count + 1 ))
    done
    PR_NO_COLOR="%{$terminfo[sgr0]%}"
PS1="[$PR_BLUE%n$PR_WHITE@$PR_GREEN%U%m%u$PR_NO_COLOR:$PR_RED%2c$PR_NO_COLOR]%(!.#.$) "
#RPS1="$PR_LIGHT_YELLOW(%D{%m-%d %H:%M})$PR_NO_COLOR"
#LANGUAGE=
LC_ALL='en_US.UTF-8'
LANG='en_US.UTF-8'
LC_CTYPE=C

if [ $SSH_TTY ]; then
  MUTT_EDITOR=vim
else
  MUTT_EDITOR=emacsclient.emacs-snapshot
fi

unsetopt ALL_EXPORT

autoload -U compinit
compinit

# Alias definitions.
# ~/MyScripts/my_aliases, instead of adding them here directly.
if [ -f ~/MyScripts/my_aliases ]; then
  . ~/MyScripts/my_aliases
fi

# System Properties
# ~/MyScripts/my_system_properties, instead of adding them here directly.
if [ -f ~/MyScripts/my_system_properties ]; then
  . ~/MyScripts/my_system_properties
fi

# System PATH
# ~/MyScripts/my_paths, instead of adding them here directly.
if [ -f ~/MyScripts/my_paths ]; then
  . ~/MyScripts/my_paths
fi

# Shell Function Definitions
# ~/MyScripts/my_functions, instead of adding them here directly.
if [ -f ~/MyScripts/my_functions ]; then
  . ~/MyScripts/my_functions
fi

# Z-Shell Styles
# ~/MyScripts/my_zstyles, instead of adding them here directly.
if [ -f ~/MyScripts/my_zstyles ]; then
  . ~/MyScripts/my_zstyles
fi

# Shell bindkeys 
# ~/MyScripts/my_bindkeys, instead of adding them here directly.
if [ -f ~/MyScripts/my_bindkeys ]; then
  . ~/MyScripts/my_bindkeys
fi
