#!/bin/bash

cp ~/.bashrc .
cp ~/.bash_profile .
cp ~/.Xresources .
cp -a ~/.config/bspwm .
cp -a ~/.config/dunst .
cp -a ~/.config/sxhkd .
cp -a ~/.config/ranger .
cp -a ~/.config/wal .
cp -a ~/.config/wpg .
cp -a ~/.config/rofi .
cp -a ~/.config/picom .
cp -a ~/.vimrc .
install -D ~/.local/bin/lock .local/bin/lock

pacman -Qqen > pkglist.txt
pacman -Qqem > pkglist_aur.txt
python3 -m pip freeze | sed 's/=.*//' > pip_packages
