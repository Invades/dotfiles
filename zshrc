#Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/invades/.zshrc'
 
autoload -Uz compinit
compinit
# Completion for kitty
kitty + complete setup zsh | source /dev/stdin
# End of lines added by compinstall

# Set Up Prompt
export PS1="$(print '%{\e[1;34m%}%B%n@%M:%b%{\e[0m%}%{\e[1;34m%}%~%{\e[0m%}%# ')"
 
export PATH=$PATH:/usr/local/bin:/opt/android-sdk/tools:/opt/android-sdk/platform-tools
export BROWSER=firefox
export LIBVA_DRIVER_NAME=vdpau
 
# Qt Style
export QT_STYLE_OVERRIDE=gtk2
export QT_QPA_PLATFORMTHEME=gtk2
 
# Export MPD Stuff
export MPD_HOST=127.0.0.1
export MPD_PORT=6600
 
# Colored man pages
export LESS_TERMCAP_mb=$'\E[01;34m'
export LESS_TERMCAP_md=$'\E[01;34m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;32m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'
 
# Set Steam to minimize to system tray
export STEAM_FRAME_FORCE_CLOSE=1
 
# Aliases
alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias du="du -h"
alias hist="cat ~/.histfile | grep "
alias update="zyp dup"
alias repkg="makepkg -efi"
alias mklove="zip -r ../${PWD##*/}.love *"
alias startmpd="sudo systemctl start mpd"
alias stopmpd="sudo systemctl stop mpd"
alias restartmpd="sudo systemctl restart mpd"
alias dd="dd status=progress"
