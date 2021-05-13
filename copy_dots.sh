#!/bin/bash

cp ~/.bashrc .
cp ~/.bash_profile .
cp ~/.Xresources .
cp -a ~/.config/bspwm .
cp -a ~/.config/dunst .
cp -a ~/.config/sxhkd .
install -D ~/.local/bin/lock .local/bin/lock

pacman -Qe | cut -d' ' -f1 > pacman_packages
python3 -m pip freeze | sed 's/=.*//' > pip_packages
