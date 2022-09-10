#!/bin/bash
shopt -s extglob
cp ~/.bashrc .
cp ~/.bash_profile .
cp ~/.Xresources .
cp -a ~/.config/bspwm .
cp -a ~/.config/dunst .
cp -a ~/.config/sxhkd .
cp -a ~/.config/ranger .
cp -a ~/.config/wal .
mkdir -p ./wpg && cp -a ~/.config/wpg/!(schemes|wallpapers) ./wpg
cp -a ~/.config/rofi .
cp -a ~/.config/picom .
cp -a ~/.vimrc .
mkdir -p .vim && cp -a ~/.vim/!(plugged|black) ./.vim
mkdir -p .local/bin/ && cp ~/.local/bin/lock .local/bin/lock

pacman -Qqen > pkglist.txt
pacman -Qqem > pkglist_aur.txt
python3 -m pip freeze | sed 's/=.*//' > pip_packages
