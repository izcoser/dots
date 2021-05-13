#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PS1="$ "

alias ls='ls --color=auto'
alias cap='cat /sys/class/power_supply/BAT0/capacity'
alias esxhkd='vim ~/.config/sxhkd/sxhkdrc'
alias ebspwm='vim ~/.config/bspwm/bspwmrc'
alias exres='vim ~/.Xresources'
alias ebash='vim ~/.bashrc'
alias lsblk+='lsblk -o name,mountpoint,label,size,uuid'
alias yay='paru'
for i in $(ls ~/Pictures/Instagram); do
	alias $i='sxiv -t ~/Pictures/Instagram/'$i
done

#PS1='[\u@\h \W]\$ '
export PATH="${PATH}:${HOME}/.local/bin/"
#(cat ~/.cache/wal/sequences &)
(cat $HOME/.config/wpg/sequences &)
alias colors="$HOME/.local/share/colors.sh"
#export PS1="$ "
