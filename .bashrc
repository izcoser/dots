#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias cap='cat /sys/class/power_supply/BAT0/capacity'
alias esxhkd='vim ~/.config/sxhkd/sxhkdrc'
alias ebspwm='vim ~/.config/bspwm/bspwmrc'
alias exres='vim ~/.Xresources && xrdb ~/.Xresources'
alias ebash='vim ~/.bashrc'
alias lsblk+='lsblk -o name,mountpoint,label,size,uuid'
alias yay='paru'
for i in $(ls ~/Pictures/Instagram); do
	alias $i='sxiv -t ~/Pictures/Instagram/'$i
done

export PATH="${PATH}:${HOME}/.local/bin/"
(cat $HOME/.config/wpg/sequences &)
alias colors="$HOME/.local/share/colors.sh"
